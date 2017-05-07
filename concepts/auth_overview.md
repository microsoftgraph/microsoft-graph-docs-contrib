# Authentication and Authorization with Azure Active Directory for Microsoft Graph

Your app must acquire an access token from Azure Active Directory (Azure AD) that it can attach to requests that it sends to Microsoft Graph. This access token will contain information about your app and the permissions it has for the resources and APIs available through Microsoft Graph. To acquire an access token, your app must be able to authenticate with Azure AD and be authorized by either a user or an administrator for access to the resources it needs in Microsoft Graph. 

## What is an access token and how do I use it?

Access tokens issued by Azure AD are base 64 encoded JSON Web Tokens (JWT). They contain information that Web APIs that are secured by Azure AD, like Microsoft Graph, use to validate the caller and to ensure that the caller has the proper permissions to perform the operation they're requesting. When calling Microsoft Graph, you can treat access tokens as opaque. 

Here's an example of an Azure AD access token:

`EwAoA8l6BAAU7p9QDpi/D7xJLwsTgCg3TskyTaQAAXu71AU9f4aS4rOK5xoO/SU5HZKSXtCsDe0Pj7uSc5Ug008qTI+a9M1tBeKoTs7tHzhJNSKgk7pm5e8d3oGWXX5shyOG3cKSqgfwuNDnmmPDNDivwmi9kmKqWIC9OQRf8InpYXH7NdUYNwN+jljffvNTewdZz42VPrvqoMH7hSxiG7A1h8leOv4F3Ek/oeJX6U8nnL9nJ5pHLVuPWD0aNnTPTJD8Y4oQTp5zLhDIIfaJCaGcQperULVF7K6yX8MhHxIBwek418rKIp11om0SWBXOYSGOM0rNNN59qNiKwLNK+MPUf7ObcRBN5I5vg8jB7IMoz66jrNmT2uiWCyI8MmYDZgAACPoaZ9REyqke+AE1/x1ZX0w7OamUexKF8YGZiw+cDpT/BP1GsONnwI4a8M7HsBtDgZPRd6/Hfqlq3HE2xLuhYX8bAc1MUr0gP9KuH6HDQNlIV4KaRZWxyRo1wmKHOF5G5wTHrtxg8tnXylMc1PKOtaXIU4JJZ1l4x/7FwhPmg9M86PBPWr5zwUj2CVXC7wWlL/6M89Mlh8yXESMO3AIuAmEMKjqauPrgi9hAdI2oqnLZWCRL9gcHBida1y0DTXQhcwMv1ORrk65VFHtVgYAegrxu3NDoJiDyVaPZxDwTYRGjPII3va8GALAMVy5xou2ikzRvJjW7Gm3XoaqJCTCExN4m5i/Dqc81Gr4uT7OaeypYTUjnwCh7aMhsOTDJehefzjXhlkn//2eik+NivKx/BTJBEdT6MR97Wh/ns/VcK7QTmbjwbU2cwLngT7Ylq+uzhx54R9JMaSLhnw+/nIrcVkG77Hi3neShKeZmnl5DC9PuwIbtNvVge3Q+V0ws2zsL3z7ndz4tTMYFdvR/XbrnbEErTDLWrV6Lc3JHQMs0bYUyTBg5dThwCiuZ1evaT6BlMMLuSCVxdBGzXTBcvGwihFzZbyNoX+52DS5x+RbIEvd6KWOpQ6Ni+1GAawHDdNUiQTQFXRxLSHfc9fh7hE4qcD7PqHGsykYj7A0XqHCjbKKgWSkcAg==`

To use an access token to call Microsoft Graph, you add it as a Bearer token to the Authorization header in an HTML request. For example, here's a call that returns the profile information of the signed-in user (the access token has been truncated for readability in this example):

```
HTTP/1.1
Authorization: Bearer EwAoA8l6BAAU ... 7PqHGsykYj7A0XqHCjbKKgWSkcAg==
Host: graph.microsoft.com`
GET https://graph.microsoft.com/v1.0/me/
```
## What are Microsoft Graph permissions?
Microsoft Graph exposes a rich set of granular permissions over the resources it controls. These permissions are expressed as strings and grant apps access to Microsoft Graph resources like users, groups, user mail, etc. For example:

- _User.Read_ allows an app to read the profile of the signed-in user.
- _Mail.Send_ allows an app to send mail on behalf of the signed-in user.

Microsoft Graph exposes two types of permissions:

- Delegated permissions are used by apps that run with a user present. The user's privileges are delegated to the app which makes calls on behalf of the user to Microsoft Graph. Many of these permissions can be consented to by a user, but others require administrator consent.  
- Application permissions are used by apps that run without a user. These often grant an app broad privileges within an organization and always require the consent of an administrator.

For a complete list of Microsoft Graph permissions, as well as the differences between Delegated and Application permissions, see the [Permissions reference](permissions_reference.md).

## Where does my app get an access token?
Your app gets access tokens from Azure Active Directory (Azure AD), Microsoft's cloud identity service. To get an access token, your app exchanges HTTP requests and responses with Azure AD using industry-standard protocols defined in the OAuth 2.0 and OpenID Connect 1.0 specifications. These protocols describe the Azure AD endpoints and exchanges with them -- or flows -- that your app uses to securely authenticate with Azure AD and get access tokens.  

On a very simple level, to get an access token, your app exchanges HTTP requests with the following endpoints:
- The `/authorize` endpoint, where your app can send a user to authenticate with Azure AD and consent to the permissions your app needs.
- The `/token` endpoint where your app can get an access token once user consent has been granted.

(Note: These definitions are not rigid. Depending on the protocol your app uses, it may get access tokens directly from the `/authorize` endpoint or it may authenticate directly with the `/token` endpoint.) 

Here's an example of one set of the `/authorize` and `/token` endpoints exposed by Azure AD v2.0:

```
https://login.microsoftonline.com/common/oauth2/v2.0/authorize
https://login.microsoftonline.com/common/oauth2/v2.0/token

```
Azure AD exposes two sets of endpoints, Azure AD v1.0 and Azure AD v2.0. Azure AD v1.0 is often just referred to as Azure AD. The main difference between them is that Azure AD v1.0 supports only work or school accounts (that is, accounts that are associated with an Azure AD tenant), while Azure AD v2.0 also supports Microsoft accounts (_Live.com_ or _outlook.com_ accounts). This means that if you use Azure AD v1.0, your app can target only organizations, but with Azure AD v2.0 it can target both consumers and organizations. 

Tokens between v1.0 and v2.0 are not interchangeable. Because the Azure AD v2.0 endpoint is newer and features are still being added, there are some important limitations that you need to factor into your decision on which endpoint to use for your app in production. For more information, see [Deciding between the Azure AD and Azure AD v2.0 endpoints](#deciding-between-the-azure-ad-and-azure-ad-v20-endpoints).

## What's the difference between OAuth 2.0 and OpenID Connect?

OAuth 2.0 is an authorization protocol. It defines how your app can get access tokens by authenticating directly with Azure AD or by redirecting a user to authenticate with Azure AD and consent to the permissions your app requests. In the first case, your app gets an access token that it can use to call Azure AD as itself. In second case, your app gets an access token that it can use to send requests on behalf of a user, but, with OAuth 2.0, it does not receive any information about the user or how they were authenticated from Azure AD. OAuth 2.0 flows are most often used by mobile or native apps, which already know the identity of the user; or by apps like services or daemons, which call Microsoft Graph under their own identity and not on behalf of a user.

OpenID Connect extends OAuth 2.0 to provide an identity layer. With OpenID Connect, in addition to an access token, your app can also get an id token from Azure AD. OpenID Connect id tokens contain claims about the user's identity and details about how and where they were authenticated. OpenID Connect flows are typically used by Web apps, including single page apps (SPAs). These apps can use the id token to customize their behavior for the user they've requested an access token for, and, in many cases, will integrate with Azure AD to outsource sign-in of their users to Azure AD and to enable experiences like Single Sign-on (SSO).

## How do I get my app talking to Azure AD?
Before your app can get a token from Azure AD, it must be registered. For the Azure AD v2.0 endpoint, you use the [Microsoft App Registration Portal](https://apps.dev.microsoft.com/). For the Azure AD endpoint, you use the [Azure portal](https://azure.portal.com/). Registration integrates your app with Azure AD and establishes the coordinates and identifiers that it uses to get tokens. These are:

- **Application Id**: A unique identifier assigned by Azure AD. 
- **Redirect URI/URL**: One or more endpoints at which your app will receive responses from Azure AD. (For native and mobile apps this is a URI assigned by Azure AD.)
- **Application Secret**: A password or a public/private key pair that your app uses to authenticate (itself) with Azure AD. (Not needed for native or mobile apps.)

For apps that use the Azure AD (v1.0) endpoints, you'll also pre-configure the Microsoft Graph permissions that it needs at the portal. For apps that use the Azure AD v2.0 endpoint, you may or may not need to pre-configure permissions. 

The registration properties configured in the portal are used on the wire. For example, in the following token request, *client_id* is the *Application Id*, *redirect_uri* is one of your app's registered *Redirect URIs*, and *client_secret* is the *Application Secret*: 

```
// Line breaks for legibility only

POST /common/oauth2/v2.0/token HTTP/1.1
Host: https://login.microsoftonline.com
Content-Type: application/x-www-form-urlencoded

client_id=6731de76-14a6-49ae-97bc-6eba6914391e
&scope=user.read%20mail.read
&code=OAAABAAAAiL9Kn2Z27UubvWFPbm0gLWQJVzCTE9UkP3pSx1aXxUjq3n8b2JRLk4OxVXr...
&redirect_uri=http%3A%2F%2Flocalhost%2Fmyapp%2F
&grant_type=authorization_code
&client_secret=JqQX2PNo9bpM0uEihUPzyrh    // NOTE: Only required for web apps
```

## Are there authentication libraries available?
Like most developers, you will probably use authentication libraries to manage your interactions with Azure AD. Authentication libraries abstract many protocol details, like validation, cookie handling, maintaining secure connections, etc. away from the developer and let you focus your development on your app's features. Microsoft publishes open source client libraries and server middleware for both Azure AD and Azure AD v2.0. 

For the Azure AD v2.0 endpoint: 

- Microsoft Authentication Library (MSAL) client libraries are available for .NET, JavaScript, Android, and Objective-c (iOS). All platforms are in production preview, and, in the event breaking changes are introduced, Microsoft guarantees a path to upgrade.
- Server middleware from Microsoft is available for .NET core and ASP.NET (OWIN OpenID Connect and OAuth) and Node.js (Microsoft Azure AD Passport.js). 
- The v2.0 endpoint will be compatible with many third-party authentication libraries.

For a complete list of Microsoft client libraries, Microsoft middleware, and compatible third-party libraries, see [Azure Active Directory v2.0 authentication libraries](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-libraries).

For the Azure AD v1.0, the Active Directory Authentication Library (ADAL) client libraries are available on a slightly larger number of platforms. Server middleware is available for .NET core and ASP.NET, as well as Node.js. For more information, see [Azure Active Directory Authentication Libraries](https://docs.microsoft.com/azure/active-directory/develop/active-directory-authentication-libraries)

## Get Started
Once you've registered your app, you're ready to get started!

- To learn more about getting an access token for apps that call Microsoft Graph on behalf of a user, see [Get access on behalf of users](auth_v2_user.md).
- To learn more about getting an access token for apps that call Microsoft Graph without a user, see [Get access without a user](auth_v2_user.md).
- If you're ready to jump into code, check out one of the Microsoft Graph samples listed in [Resources for implementing authentication in your Microsoft Graph app](#resources-for-implementing-authentication-in-your-microsoft-graph-app).


## Deciding between the Azure AD and Azure AD v2.0 endpoints

Azure AD exposes two sets of endpoints, Azure AD and Azure AD v2.0, where you can get access tokens to use when you call Microsoft Graph. Tokens received from each endpoint are not interchangeable, so before you begin development, you need to decide which endpoint makes the best sense for your scenario.

The main difference between Azure AD and Azure AD v2.0 is that:

* Azure AD supports only work or school accounts; that is, accounts that are associated with an Azure AD tenant. This means that your app can target only organizations.
* Azure AD v2.0 supports both work and school accounts and Microsoft accounts (_live.com_ or _outlook.com_ accounts). This means that your app can target both consumers and organizations using the v2.0 endpoint. 

There are some additional advantages with Azure AD v2.0. For example:

* Your app can use a single Application Id for multiple platforms. This simplifies app management for both developers and administrators.
* Support for dynamic/incremental consent. With this feature your app can request additional permissions during runtime, pairing the request for the user's consent  with the functionality that requires it. This provides a much more comfortable experience for users than having to consent to a long list of permissions when they sign-in for the first time.  

Because Azure AD v2.0 is newer than Azure AD and functionality is still being added to it, there are some limitations with the v2.0 endpoint that you need to factor into your decision. For example:

* Some features may not yet be fully implemented in v2.0. For example, your app might not work if your enterprise customer turns on enterprise mobility security features like <a href="https://azure.microsoft.com/documentation/articles/active-directory-conditional-access-device-policies/" target="_newtab">conditional device access</a>.
* You cannot call Microsoft Graph from a stand-alone Web API. 
* You cannot call Cloud Solution provider apps.
* Windows integrated authentication for federated tenants is not supported. This means that users of federated Azure AD tenants cannot silently authenticate with their on-premises Active Directory instance. They will have to re-enter their credentials.

For more information about differences between the Azure AD v2.0 endpoint and the Azure AD endpoint, see [What's different about the v2.0 endpoint?](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-compare).

The following table a provides quick reference for some of the major features that the Azure AD and Azure AD v2.0 endpoints support, and provides links to additional information. However, it is not a comprehensive reference. **Before making any decision about developing a production-ready app, consult [Should I use the v2.0 endpoint?](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-limitations) in the Azure Active Directory documentation. This topic has the most comprehensive and up-to-date information.**


<table style="width:100%">
  <tr>
    <th></th>
    <th>Azure AD endpoint</th> 
    <th>Azure AD v2.0 endpoint</th>
   </tr>
  <tr>
    <td>Grant types supported</td>
    <td style="vertical-align: text-top;"><p>Authorization code</p><p>Implicit</p><p>Client credentials</p><p>Resource owner password credentials</p></td> 
    <td style="vertical-align: text-top;"><p>Authorization code</p><p>Implicit</p><p>Client credentials</p></td>
   </tr>
  <tr>
    <td>App types supported</td>
    <td style="vertical-align: text-top;"><p>Web apps</p><p>Web APIs</p><p>Mobile and native apps</p><p>Single Page App (SPA)</p><p>Daemons/Server Side Apps</p><p>Standalone Web APIs</p><p>Cloud Solution Provider apps</p><p><a href="https://azure.microsoft.com/documentation/articles/active-directory-authentication-scenarios/" target="_newtab">more information</a></p></td> 
    <td style="vertical-align: text-top;"><p>Web apps</p><p>Web APIs</p><p>Mobile and native apps</p><p>Single Page App (SPA)</p><p>Daemons/Server Side Apps</p><p><a href="https://azure.microsoft.com/documentation/articles/active-directory-v2-flows/" target="_newtab">more information</a></td>
   </tr>
  <tr>
    <td>Conditional access device policies</td>
     <td><a href="https://azure.microsoft.com/documentation/articles/active-directory-conditional-access-device-policies/" target="_newtab">Supported</a></td> 
    <td>Not currently supported</td>
   </tr>
  <tr>
    <td>OAuth 2.0 and OpenID Connect compliant</td>
    <td>No</td> 
    <td>Yes</td>
  </tr>
  <tr>
    <td>WS-Federation/SAML protocol support</td>
    <td>Yes</td> 
    <td>No</td>
   </tr>
  <tr>
    <td>Permissions</td>
    <td>Static: Specified during app registration </td> 
    <td><a href ="https://azure.microsoft.com/documentation/articles/active-directory-v2-compare/#scopes-not-resources" target="_newtab">Dynamic:</a> Request during app runtime; includes incremental consent</td>
  </tr>
  <tr>
    <td>Account types</td>
    <td> <p>work or school accounts</p></td> 
    <td><p>work or school accounts</p><p>Microsoft accounts</p> </td>
  </tr>
  <tr>
    <td>App ID </td>
    <td>Separate app ID for each platform</td> 
    <td><a href ="https://azure.microsoft.com/documentation/articles/active-directory-v2-compare/#one-app-id-for-all-platforms" target="_newtab">Single app ID for multiple platforms</a></td>
  </tr>
  <tr>
    <td>Registration portal </td>
    <td><a href ="https://manage.windowsazure.com/" target="_newtab">Microsoft Azure Management</a></td> 
    <td><a href ="https://apps.dev.microsoft.com" target="_newtab">Microsoft Application Registration</a></td>
  </tr>
  <tr>
    <td>Client libraries </td>
    <td>Active Directory Authentication (ADAL) SDKs for most development platforms</td> 
    <td><p><a href="https://www.nuget.org/packages/Microsoft.Identity.Client" target="_newtab">Microsoft Authentication Library (Preview)</a></p><p><a href="https://azure.microsoft.com/documentation/articles/active-directory-v2-limitations/#restrictions-on-libraries-amp-sdks" target="_newtab">Open source OAuth 2.0 libraries (list)</a></p> </td>
  </tr>
  <tr>
    <td>Other features </td>
    <td><p>Group claims for Azure AD users</p><p>Application Roles and Role Claims</p></td> 
    <td></td>
  </tr>
</table> 

## Resources for implementing authentication in your Microsoft Graph app 

After you register your app with the appropriate authentication portal, and have the app registration information (app ID, app secret, if applicable, and redirect URI) that you need to establish your app's identity, you're ready to implement authentication in your app. 

Again, this will vary depending on the type of app you're building, your development platform, the authentication flow you choose, and any specific authentication requirements for your app. 

### Connect samples by authentication provider and platform

The following table lists the Connect samples by authentication provider and platform, and notes whether they connect to Microsoft Graph using REST or a Microsoft Graph client library.

<table>
  <tr>
    <th>Platform</th>
    <th>Azure AD endpoint</th> 
    <th>Azure AD v2.0 endpoint</th>
  </tr>
  <tr>
    <td>Android</td>
    <td>
		<a href="https://github.com/microsoftgraph/android-java-connect-rest-sample">REST sample</a> or 
		<a href="https://github.com/microsoftgraph/android-java-connect-sample/tree/last_v1_auth">SDK sample</a>
	</td> 
    <td>
		<a href="https://github.com/microsoftgraph/android-java-connect-sample">SDK sample</a>
	</td> 
  </tr>
  <tr>
    <td>ASP.NET</td>
    <td>
		<a href="https://github.com/microsoftgraph/aspnet-connect-rest-sample">REST sample</a>
	</td>     
	<td>
		<a href="https://github.com/microsoftgraph/aspnet-connect-sample">SDK sample</a>
	</td> 
  </tr>
  <tr>
    <td>iOS (Obj-C)</td>
    <td>
		<a href="https://github.com/microsoftgraph/ios-objectivec-connect-rest-sample">REST sample</a>
	</td>     
	<td>
		<a href="https://github.com/microsoftgraph/ios-objectivec-connect-sample">SDK sample</a>
	</td> 
  </tr>
  <tr>
    <td>iOS (Swift)</td>
    <td>
		<a href="https://github.com/microsoftgraph/ios-swift-connect-rest-sample">REST sample</a>
	</td>     
	<td>
		<a href="https://github.com/microsoftgraph/ios-swift-connect-sample">SDK sample</a>
	</td> 
  </tr>
  <tr>
    <td>Node.js</td>
    <td>
		<a href="https://github.com/microsoftgraph/nodejs-connect-rest-sample/tree/last_v1_auth">REST sample</a>
	</td>     
	<td>
		<a href="https://github.com/microsoftgraph/nodejs-connect-rest-sample">REST sample</a>
	</td> 
  </tr>
  <tr>
    <td>PHP</td>
    <td>
		<a href="https://github.com/microsoftgraph/php-connect-rest-sample/tree/last_v1_auth">REST sample</a>
	</td>     
	<td>
		<a href="https://github.com/microsoftgraph/php-connect-rest-sample">REST sample</a>
	</td> 
  </tr>
  <tr>
    <td>Python</td>
    <td>
		<a href="https://github.com/microsoftgraph/python3-connect-rest-sample">REST sample</a>
	</td>     
	<td>
	</td> 
  </tr>
  <tr>
    <td>Ruby</td>
    <td>
		<a href="https://github.com/microsoftgraph/ruby-connect-rest-sample/tree/last_v1_auth">REST sample</a>
	</td>     
	<td>
		<a href="https://github.com/microsoftgraph/ruby-connect-rest-sample">REST sample</a>
	</td> 
  </tr>
  <tr>
    <td>UWP</td>
    <td>
		<a href="https://github.com/microsoftgraph/uwp-csharp-connect-rest-sample/tree/last_v1_auth">REST sample</a>
	</td>     
	<td>
		<a href="https://github.com/microsoftgraph/uwp-csharp-connect-rest-sample">REST sample</a> or 
		<a href="https://github.com/microsoftgraph/uwp-csharp-connect-sample">SDK sample</a>
	</td> 
  </tr>
  <tr>
    <td>Xamarin</td>
    <td>
	</td>     
	<td>
		<a href="https://github.com/microsoftgraph/xamarin-csharp-connect-sample">SDK sample</a>
	</td> 
  </tr>
</table>

To explore a wide range of projects that connect to Microsoft Graph over a broad assortment of technologies, visit the [Microsoft Graph repo](https://github.com/microsoftgraph) on GitHub. 

### Get Started  

The [Get Started](http://developer.microsoft.com/graph/docs/platform/get-started) section contains detailed articles that show you how to create the apps listed in the table using the Azure AD v2.0 endpoint, and covers the authentication libraries used on each platform. 

## See also

- <a href="https://azure.microsoft.com/documentation/articles/active-directory-authentication-scenarios/#basics-of-authentication-in-azure-ad" target="_newtab">Authentication Scenarios for Azure AD</a>
- <a href="https://azure.microsoft.com/documentation/articles/?product=active-directory&term=v2.0+endpoint" target="_newtab">Azure AD v2.0 endpoint documentation on Azure.com</a>
- <a href="https://azure.microsoft.com/documentation/articles/active-directory-v2-app-registration/#build-a-quick-start-app" target="_newtab">Azure AD v2.0 code quick starts on Azure.com</a>
