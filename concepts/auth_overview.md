# Authentication and Authorization with Azure Active Directory for Microsoft Graph

Your app must acquire an access token from Azure Active Directory (Azure AD) that it can attach to requests that it sends to Microsoft Graph. This access token will contain information about your app and the permissions it has for the resources and APIs available through Microsoft Graph. To acquire an access token, your app must be able to authenticate with Azure AD and be authorized by either a user or an administrator for access to the resources it needs in Microsoft Graph. 

## What is an access token and how do I use it?

Access tokens issued by Azure AD are base 64 encoded JSON Web Tokens (JWT). They contain information that Azure AD and Web APIs, like Microsoft Graph, use to validate the caller and to ensure that the caller has the proper permissions to perform the operation they're requesting. When calling Microsoft Graph, you can treat access tokens as opaque. 

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
- Delegated permissions are used by apps that run with a user present. The user's privileges are delegated to the app when making calls to Microsoft Graph. Many of these permissions can be consented to by a user, but others require administrator consent.  
- Application permissions are used by apps that run without a user. These often grant an app broad privileges within an organization and always require the consent of an administrator.

For a complete list of Microsoft Graph permissions, as well as the differences between Delegated and Application permissions, see the [Permissions reference](permissions_reference.md).

## Where do I get an access token?

Azure AD exposes two sets of endpoints, Azure AD and Azure AD v2.0, where you can get access tokens to use when you call Microsoft Graph. Tokens received from each endpoint are not interchangeable, so you need to decide which endpoint makes the best sense for your scenario.

The main difference between Azure AD and Azure AD v2.0 is that:

* Azure AD supports only work or school accounts; that is, accounts that are associated with an Azure AD tenant. This means that your app can target only organizations.
* Azure AD v2.0 supports both work and school accounts and Microsoft accounts (_live.com_ or _outlook.com_ accounts). This means that your app can target both consumers and organizations using the v2.0 endpoint. 

Because Azure AD v2.0 is newer than Azure AD and functionality is still being added to it, there are some limitations to the Azure AD v2.0 endpoint that you need to factor into your decision. 

### Limitations with Azure AD v2.0
* The Microsoft Authentication Library (MSAL) is currently in preview (beta) and is only available for .NET. MSAL provides objects that handle a lot of the underlying complexities of authentication and authorization and let you focus on building your app. MSAL will soon move out of preview and versions will be released for .NET, iOS, Android, and JavaScript. In the meantime, there are third-party libraries that you can use for some platforms; for more information, see [Azure Active Directory v2.0 authentication libraries](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-libraries).
* Azure AD v2.0 does not yet support multi-tiered Web API flows. For example, if you are building a Web API and you want to call Microsoft Graph APIs from within your Web API, you will have to use the Azure AD endpoint to get a token. 
* Some features may not yet be fully implemented in v2.0. For example, your app might not work if your enterprise customer turns on enterprise mobility security features like <a href="https://azure.microsoft.com/documentation/articles/active-directory-conditional-access-device-policies/" target="_newtab">conditional device access</a>.

For more complete information about limitations with Azure AD v2.0, see [Should I use the v2.0 endpoint?](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-limitations).

### Advantages of Azure AD v2.0
* With v2.0, you can use a single application ID for multiple platforms; with the Azure AD endpoint, you need a different application ID for each platform. Having a single app ID makes app management much easier for administrators and developers. 
* OAuth 2.0 and OpenID Connect compliant, this means that you can use many third-party libraries for authentication and authorization. For more information, see [Azure Active Directory v2.0 authentication libraries](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-libraries).
* Incremental or dynamic consent. With Azure AD, you must pre-configure all the permissions your app requires. This means that when a user signs in to your app they might be presented with a long list of permissions requiring their consent. This can be an off-putting experience for many users, and, in some cases, may result in them not using your app. Azure AD v2.0 supports incremental, sometimes called dynamic, consent. This enables your app to ask for minimal permissions when a user first signs in and defer asking for other permissions until the app actually needs them. This means the permission request can be paired with additional functionality that the user wants and you can present the user with an explanation of why the app needs the additional permission(s). 

For more information about differences between the Azure AD v2.0 endpoint and the Azure AD endpoint, see [What's different about the v2.0 endpoint?](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-compare).

## How do I get access tokens?
To get an access token, your app interacts with Azure AD using protocols defined in the industry-standard OAuth 2.0 and OpenID Connect 1.0 specifications. These protocols describe the Azure AD endpoints and exchanges with them (or flows) that your app uses to securely authenticate with Azure AD and get access tokens.  

On a very simple level, to get an access token, your app exchanges HTTP requests with the following endpoints:
- The `/authorize` endpoint, where your app can send a user to authenticate with Azure AD and consent to the permissions your app needs.
- The `/token` endpoint where your app can get an access token once user consent has been granted.

(Note: These definitions are not rigid. Depending on the protocol your app uses, it may get access tokens directly from the `/authorize` endpoint or it may authenticate directly with the `/token` endpoint.) 

Here's an example of the `/authorize` and `/token` endpoints that your app would use for Azure AD v2.0 if it is targeting both users with a Microsoft account and users with a work or school account:

```
https://login.microsoftonline.com/common/oauth2/v2.0/authorize
https://login.microsoftonline.com/common/oauth2/v2.0/token

```

> What's the difference between OAuth 2.0 and OpenID Connect?
>
>- OAuth 2.0 is an authorization protocol. It defines how your app can get access tokens by authenticating directly with Azure AD or by redirecting a user to authenticate with Azure AD and consent to the permissions your app requests. Your app gets an access token that it can use to send requests on behalf of a user, but it does not receive any information about the user or how they were authenticated.
>- OpenID Connect extends OAuth 2.0 to provide an identity layer. With OpenID Connect, in addition to an access token, your app can also get an id token. OpenID Connect id tokens contain claims about the user's identity and details about how and where they were authenticated. By using OpenID connect, your app can outsource sign-in of its users to Azure AD. 

Like most developers, you will probably use authentication libraries to manage your interactions with Azure AD. Authentication libraries abstract many protocol details, like validation, handling cookies, maintaining secure connections, etc. away from the developer. Microsoft publishes open source authentication libraries and server middleware for both Azure AD and Azure AD v2.0. 

The first step to getting an access token is registering your app with Azure AD. For the Azure AD v2.0 endpoint, you use the [Microsoft App Registration Portal](https://apps.dev.microsoft.com/). For the Azure AD endpoint, you use the [Azure portal](https://azure.portal.com/). When register your app, Azure AD assigns it an Application ID. The Application ID uniquely identifies your app with Azure AD. Additionally, you may configure other values that your app will need to get a token from Azure AD. For example, one or more redirect URLs that Azure AD will use to respond to requests from your app, or an Application Secret, either a password or public/private key pair, that it uses to authenticate with Azure AD.

For apps that use the Azure AD endpoint, you'll also pre-configure the Microsoft Graph permissions that it needs at the portal. For apps that use the Azure AD v2.0 endpoint, you may or may not need to pre-configure permissions, depending on whether your app uses the dynamic consent feature of Azure AD v2.0 to request the permissions it needs at runtime. 

Once you've registered your app, you're ready to get started!

- To learn more about getting an access token for apps that call Microsoft Graph on behalf of a user, see [Get access on behalf of users](auth_v2_user.md).
- To learn more about getting an access token for apps that call Microsoft Graph without a user, see [Get access without a user](auth_v2_user.md).
- If you're ready to jump into code, check out one of the Microsoft Graph samples listed in [Resources for implementing authentication in your Microsoft Graph app](#resources-for-implementing-authentication-in-your-microsoft-graph-app)


> **Note** Both Azure AD and Azure AD v2.0 also support the WS-Federation and Security Assertion Markup Language (SAML) 2.0 protocols. For more information, see [Resources for Azure AD and Azure AD 2.0 endpoints](#deciding-between-the-azure-ad-and-azure-ad-v20-endpoints).
> 

## Deciding between the Azure AD and Azure AD v2.0 endpoints

The following table summarizes the major features that the Azure AD and Azure AD v2.0 endpoints support, and provides links to additional information. The relative importance of these features--and therefore, which authentication provider you choose to implement in your app--will primarily depend on:

- The account type (enterprise or consumer) your app needs to support
- The type of app you want to build
- The authentication flow required 

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
    <td style="vertical-align: text-top;"><p>Web apps</p><p>Web APIs</p><p>Mobile and native apps</p><p>Single Page App (SPA)</p><p>Standalone Web APIs</p><p>Daemons/Server Side Apps</p><p><a href="https://azure.microsoft.com/documentation/articles/active-directory-authentication-scenarios/" target="_newtab">more information</a></p></td> 
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
    <td>Permissions</td>
    <td>Static: Specified during app registration </td> 
    <td><a href ="https://azure.microsoft.com/documentation/articles/active-directory-v2-compare/#scopes-not-resources" target="_newtab">Dynamic:</a> Request during app runtime; includes incremental consent</td>
  </tr>
  <tr>
    <td>Account types</td>
    <td> <p>work or school</p></td> 
    <td><p>work or school</p><p>personal</p> </td>
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

> **Note** Both Azure AD and Azure AD v2.0  also support the WS-Federation and Security Assertion Markup Language (SAML) 2.0 protocols. 
> 
> - For more information about authentication and authorization flows using SAML and WS-Federation, see [Authentication protocols: Web Browser to Web Application](https://docs.microsoft.com/azure/active-directory/develop/active-directory-authentication-scenarios#web-browser-to-web-application).
> - For more information about using SAML, see the topics under [Working with SAML](https://docs.microsoft.com/azure/active-directory/develop/active-directory-saml-protocol-reference) in the Azure Active Directory Developer's Guide. 
> - For more information about using WS-Federation, see the [WS-Federation specification](http://docs.oasis-open.org/wsfed/federation/v1.2/os/ws-federation-1.2-spec-os.html).
>

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
