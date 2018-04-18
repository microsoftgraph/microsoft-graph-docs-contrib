ms.TocTitle: Authentication and permissions
Title: OneNote authentication and permissions 
Description: Authenticate and register OneNote apps with Microsoft account authentication or Azure Active Directory.
ms.ContentId: 07c9eca4-6c40-4f20-9314-5800d4627b95
ms.topic: article (how-tos)
ms.date: November 18, 2015

[!INCLUDE [Add the O365API repo styles](../includes/controls/addo365apistyles.xml)]
[!INCLUDE [Add the ONAPI repo styles](../includes/controls/addonapistyles.xml)]


# OneNote authentication and permissions

*__Applies to:__ Consumer notebooks on OneDrive | Enterprise notebooks on Office 365*
 
OneNote uses Microsoft account (formerly Live Connect) and Azure Active Directory to provide secure access to OneNote notebooks. Before you can access notebooks, you first need to authenticate using Microsoft account or Azure AD and get an access token.

**In this article**

- [Authenticate using Microsoft account (consumer apps)](#msa-auth)  
- [Authenticate using Azure AD (enterprise apps)](#aad-auth)  

<br />
Microsoft account is used to access consumer notebooks on OneDrive, and Azure AD is used to access enterprise notebooks on Office 365.

Both authorization services implement the [OAuth 2.0](http://oauth.net/2/) protocol to provide the access tokens that are required to interact with OneNote. All requests to the OneNote API must include a valid access token in the **Authorization** header.

This article describes the auth-related processes that you're responsible for: Registering your app to get a client ID, specifying the permissions you need, and calling the authorization service to sign users in and get an access token. 

Depending on your platform, you might be able to use an [SDK](#sdks) to simplify the auth flows.

>OneNote will eventually support the single authentication model and app registration provided by the [v2.0 app model](https://msdn.microsoft.com/en-us/office/office365/howto/authenticate-Office-365-APIs-using-v2). Watch for related updates on the [OneNote Developer Blog](http://go.microsoft.com/fwlink/?LinkID=390183).

**Try the APIs**

If you just want to try out the APIs, you can use one of our [interactive consoles](../howto/onenote-landing.md#console) to make calls to your consumer notebooks on OneDrive. Or you can follow the steps in this article to get an access token using your favorite network tool, such as Fiddler.

<a name="msa-auth"></a>
## Authenticate using Microsoft account (consumer apps) 

 1. [Register your application and get a client ID and secret](#register-msa)
 2. [Choose OneNote permissions](#onenote-perms-msa) 
 3. [Sign users in and get an access token](#sign-in-msa) 
 4. [Get a new access token after it expires](#get-new-access-token-msa) 


<a name="register-msa"></a>
### Register your application and get a client ID and secret (consumer apps)

To start, you need to register an application with Microsoft. This process creates a service principal that you link to from your app, and generates the client ID and secret that you send to the authorization service.
  
*Do this if your app accesses consumer notebooks only, or if it accesses both consumer and enterprise notebooks.*

1. Sign into the [Microsoft account Developer Center](https://account.live.com/developers/applications) with your Microsoft account. (If you're developing a Windows Store app, do [this](#win-store) instead.)

  If you don't have a Microsoft account, you'll need to [create one](https://signup.live.com/signup). You should use an email address that you check regularly. We might try to contact you to highlight your app on our [Featured Apps](http://dev.onenote.com/apps) page, or if we notice unexpected network traffic coming from your app. We won't spam you or sell your information.

2. Choose **Create application**.

3. Enter the name you want users to see when they're prompted to grant permissions to your app, and choose the primary language for your app.  

4. If you accept the terms of use and Privacy & Cookies policy, choose **I accept** to continue with the registration.

5. On the API Settings page, choose your app type and provide information about your app:   

  <p id="top-padding">**Web applications** (server-side apps)</p>  
  <p id="indent"> a. Choose **No** for **Mobile or Desktop client app**.</p>
  <p id="indent"> b. For the target domain, enter the service URL.</p>
  <p id="indent"> c. Enter the redirect URL where you want users directed to after they are authenticated and have granted access to your app.</p>  
  <p id="outdent">**Native applications** (installed on a device)</p>  
  <p id="indent"> a. Choose **Yes** for **Mobile or Desktop client app**.</p>
  <p id="indent"> b. (Optional) For the target domain, enter the mobile service URL.</p>
  <p id="indent"> c. (Optional) For the redirect URL, enter a valid URL. This acts as an identifier for your app, and doesn't have to be a physical endpoint.*</p>   

<br />
Save the client ID and client secret shown on the App Settings page and the redirect URL if you provided one. 

<a name="win-store"></a>
**Windows Store apps**  

If you're creating a Windows app, you'll register your application on the [Windows Dev Center](https://dev.windows.com/overview) instead. This will provide you with the package identity (package SID) that you'll use instead of the client ID. 

<!--
>If you have multiple apps, you might need to override the default [JWT sharing behavior](http://msdn.microsoft.com/en-us/library/live/hh826544.aspx#restrict_jwt) on the Microsoft account Developer Center.
-->

1. Sign into the [Windows Dev Center](https://dev.windows.com/overview) with your Microsoft account.
2. On the dashboard, choose **Create a new app** and enter your app name.
2. In Visual Studio, right-click your Windows Store app project and choose **Store > Associate App with the Store**. 
2. In the Associate Your App with the Windows Store window, sign in with your Microsoft account, choose your app, and then choose **Next > Associate**. This adds the required Windows Store registration information to the application manifest. 
2. For a universal Windows app, repeat the previous two steps for the Windows Phone project.  


<a name="onenote-perms-msa"></a>
### Choose OneNote permission scopes (consumer apps)

Permission scopes represent levels of access to OneNote content. You request the permissions that your app needs, and users grant or deny access when they sign into your app. Users can only grant permissions that they have.

<!--All scopes support single sign-on, so users who are already signed into OneNote skip authentication and go straight to authorization. -->

Choose the lowest level of permissions that your app needs to do its work. You can request multiple scopes.

| Scope (consumer) | Description |
|-------|------|
| office.onenote_create | Can view a list of the user's OneNote notebooks and create new pages, but cannot view or edit existing pages. Can enumerate the user's notebook hierarchy and create pages in any location. |
| office.onenote_update_by_app | Can create, view, and modify all pages created by the app. |
| office.onenote_update | Can create, view, and modify any content in the user's OneNote notebooks and pages. |
| office.onenote  | Can view OneNote notebooks and pages but not modify them. |
| wl.signin | A [Microsoft account permission scope](https://msdn.microsoft.com/library/hh243646.aspx).<br />Allows your application to take advantage of single sign-on capabilities. |
| wl.offline_access | A [Microsoft account permission scope](https://msdn.microsoft.com/library/hh243646.aspx).<br />Allows your application to receive a refresh token so it can work offline even when the user isn't active. This scope is not available for the *token* flow. |

For permissions used to access Office 365 notebooks, see [Choose OneNote permissions (enterprise apps)](#onenote-perms-aad).


<a name="sign-in-msa"></a>
### Sign users in and get an access token (consumer apps)

Your app initiates the sign-in process by contacting the authorization service. If users aren't already signed in or haven't already consented, the service prompts them for credentials and to consent to the permissions requested by your app. If authentication and authorization are successful, you'll receive an access token that you include in your requests to the OneNote API.

**Important!** Treat access tokens and refresh tokens as securely as you would a user's password.

>Depending on your platform, you might be able to use an [SDK](#sdks) to simplify the auth flows.

Choose your authentication flow. Both are standard OAuth 2.0 flows.

| Flow | Description |  
|------|------|  
| [Token flow](#token-flow) | <p>Gets an access token in one call. Useful for quick access, but doesn't provide a refresh token for long term access.</p><p>Also called the *Implicit* flow.</p> |  
| [Code flow](#code-flow) | <p>Gets an authorization code in the first call and exchanges the code for an access token in the second call. When used with the **wl.offline-access** permission scope, your application receives a refresh token that enables long-term access.</p><p>Also called the *Authorization code* flow.</p> |


<a name="token-flow"></a>
**Sign users in with the Token flow**

Load the following URL request in a web browser or web-browser control.

```
GET https://login.live.com/oauth20_authorize.srf
  ?response_type=token
  &client_id={client_id}
  &redirect_uri={redirect_uri}
  &scope={scope}
```

| Required query string parameter | Description |  
|------|------|  
| response_type | The type of authentication flow you're using. In this case, *token*. |  
| client_id | The client ID created for your application. |  
| redirect_uri | The redirect URL you registered for your application. Mobile and desktop apps that didn't specify one can use this: `https://login.live.com/oauth20_desktop.srf` |  
| scope | The scopes that your application requires.<br />Example: *office.onenote%20wl.sign-in* |  

Upon successful authentication and authorization, the web browser redirects to your redirect URL and appends access parameters to the URL. The parameters include  
 the **access_token** and **token_type**, as shown in the following example. The access token is valid for the number of seconds specified in the **expires_in** property. 

```
https://your-redirect-url
  #access_token=EwB4Aq...%3d
  &token_type=bearer
  &expires_in=3600
  &scope=office.onenote wl.signin
  &user_id=c519ea026ece84de362cfa77dc0f2348
```


<a name="code-flow"></a>
**Sign users in with the Code flow**

Getting an access token is a two-step process with the Code flow: 

1. Sign the user in and get an authorization code.
2. Exchange the code for an access token.

<br />
**Step 1.** Sign the user in and get an authorization code. To start the sign-in process, load the following URL request in a web browser or web-browser control. 

```
https://login.live.com/oauth20_authorize.srf
  ?response_type=code
  &client_id={client-id}
  &redirect_uri={redirect-uri}
  &scope={scope}
```
		
| Required query string parameter |  Description  |  
|------|-------|  
| response_type | The type of authentication flow you're using. In this case, *code*. |  
| client_id | The client ID created for your application. |  
| redirect_uri | The redirect URL you registered for your application. Mobile and desktop apps that didn't specify one can use this: `https://login.live.com/oauth20_desktop.srf` |
| scope | The scopes that your application requires.<br />Example: *office.onenote wl.signin wl.offline_access* |

Upon successful authentication and authorization, the web browser redirects to your redirect URL with a *code* parameter appended to the URL, as shown in the following example. 
 Copy the *code* value to use in step 2. This code is valid for a few minutes.

```
https://your-redirect-uri
  ?code=M57010781-9e8c-e31e-ca0d-46bc104236c4
```


**Step 2.** Exchange the authorization code for an access token and refresh token. Send the following HTTP request with a properly encoded URL string in the message body.

```
POST https://login.live.com/oauth20_token.srf
Content-Type: application/x-www-form-urlencoded

grant_type=authorization_code
&client_id={client-id}
&client_secret={client-secret}
&code={code}
&redirect_uri={redirect-uri}
```

| Required body parameter | Description |  
|------|------|  
| grant_type | The grant type of the request. In this case, *authorization_code*. |  
| client_id | The client ID created for your application. |  
| client_secret | The client secret created for your application. |  
| code | The code you received as a URL parameter in the previous step. |  
| redirect_uri | The redirect URL for your application. This must match the **redirect_uri** in the first request. |  
			
If successful, the response contains a JSON string that includes the **access_token**--and the **refresh_token** if you requested the **wl.offline_access** scope--as shown in the following example. The access token is valid for the number of seconds specified in the **expires_in** property. 

```json
{
  "token_type":"bearer",
  "expires_in":3600,
  "scope":"office.onenote wl.sign-in wl.offline-access",
  "access_token":"EwCAAq...wE=",
  "refresh_token":"MCvePE...$$",
  "user_id":"c519ea026ece84de362cfa77dc0f2348"
}
```

**Include the access token in your request to the OneNote API**

All your requests to the OneNote API must send the access token as a bearer token in the **Authorization** header. For example, the following request gets five of your notebooks, sorted alphabetically by name:

```
GET https://www.onenote.com/api/v1.0/me/notes/notebooks?top=5
Authorization: Bearer {access-token}
```

Access tokens are only valid for an hour, so you'll need to get fresh tokens when they expire. You should check the token's expiration before using it, and get a new access token if needed. Users can remain signed in, and they don't have to consent to permissions again unless they sign out or revoke permissions.


<a name="get-new-access-token-msa"></a>
### Get a new access token after it expires (consumer apps)

You can request a new access token by using the refresh token or by repeating the auth process from the beginning.

When an access token expires, requests to the API return a `401 Unauthorized` response. Your app should handle this response and check the token expiration before sending requests.
  
Send the following HTTP request with a properly encoded URL string in the message body.

You received a refresh token if you requested the **wl.offline_access** permission and used the Code flow.

```http
POST https://login.live.com/oauth20_token.srf
Content-Type: application/x-www-form-urlencoded

grant_type=refresh_token
&client_id={client-id}
&client_secret={client-secret}
&redirect_uri={redirect-uri}
&refresh_token={refresh-token}
```

| Required body parameter | Description |  
|------|-------|  
| grant_type | The grant type of the request. In this case, *refresh_token*. |  
| client_id | The client ID created for your application. |  
| client_secret | The client secret created for your application. |  
| redirect_uri  | The redirect URL for your application. This must match the **redirect_uri** that you used to obtain the tokens. |  
| refresh_token | The refresh token you received previously. |  

If successful, the response for the POST request contains a JSON string that includes the **access_token** and **refresh_token**, as shown in the following example.

```json
{
  "token_type":"bearer",
  "expires_in": 3600,
  "scope":"office.onenote wl.sign-in wl.offline-access",
  "access_token":"EwB4Aq...wE=",
  "refresh_token":"MCVw8k...$$",
  "user_id":"c519ea026ece84de362cfa77dc0f2348"
}
```

Update your stored tokens to ensure that your app has tokens with the longest lifespan.

<a name="sign-out"></a>
### Sign users out (consumer apps)
To sign a user out, perform the following steps:

1. Delete any cached access tokens or refresh tokens you've received or stored.
2. Perform any sign out actions in your application (for example, cleaning up local state, removing any cached items, etc.).
3. Make a call to the authorization service using this URL:

```
https://login.live.com/oauth20_logout.srf
  ?client_id={client_id}
  &redirect_uri={redirect_uri}
```

This call removes any cookies that enable single sign-on and ensures that the user will be prompted to sign in.

| Required query string parameter | Description |  
|------|------|  
| client_id | The client ID value created for your application. |  
| redirect_uri | The redirect URL for your application. This must match the **redirect_uri** that you used to obtain the tokens. |  

After removing cookies, the browser redirects to your redirect URL. The redirect page loads without specifying any authentication query string options, which means the user has been logged out.


<a name="revoke-access"></a>
**Revoking access**

Users can revoke an application's access to their account by visiting the Microsoft account [Manage](https://account.live.com/consent/Manage) page.

When consent for your app is revoked, any refresh token previously provided to your application will no longer be valid. You'll receive the following response if you try to refresh the token:

```
{
  "error":"invalid_grant",
  "error_description":"The request was denied because one or more scopes requested are unauthorized or expired. The user must first sign in and grant the client application access to the requested scope."
}
```

You'll need to repeat the auth flow to request a new access and refresh token from the beginning.


<a name="aad-auth"></a>
## Authenticate using Azure AD (enterprise apps)

 1. [Register your application and get a client ID and secret](#register-aad)
 2. [Choose OneNote permissions](#onenote-perms-aad) 
 3. [Sign users in and get an access token](#sign-in-aad) 
 4. [Get a new access token after it expires](#get-new-access-token-aad) 


<a name="register-aad"></a>
### Register your application and get a client ID and secret (enterprise apps)

To start, you need to register an application with Microsoft. This process creates a service principal that you link to from your app, and generates the client ID and secret that you send to the authorization service.

*Do this if your app accesses enterprise notebooks only, or if it accesses both consumer and enterprise notebooks.*

To register your app on an Azure AD tenant that's associated with an Office 365 subscription, you'll need to:

- **Get an Office 365 account with global administrator permissions to an Office 365 tenant**

  You can [try](https://portal.office.com/Signup/Signup.aspx?OfferId=6881A1CB-F4EB-4db3-9F18-388898DAF510&DL=DEVELOPERPACK&ali=1#0) or [buy](https://portal.microsoftonline.com/Signup/MainSignUp.aspx?OfferId=C69E7747-2566-4897-8CBA-B998ED3BAB88&DL=DEVELOPERPACK) an Office 365 Developer subscription, or subscribe to a [qualifying plan](../howto/setup-development-environment.md#bk_Office365Account). 
 
- **Provision OneDrive for Business for your tenant**

  This makes the OneNote application available so you can specify OneNote permissions. To check whether OneDrive for Business is provisioned, sign into [OneNote Online](http://www.onenote.com) with your Office 365 credentials (a work or school account like *someone@example.com* or *someone@example.onmicrosoft.com*). 

  If you see your notebooks, you're all set. If you see "Sorry, we can't seem to get your notebooks...", choose **Go to my account** > **Next**. When your OneDrive for Business page loads, go back and refresh OneNote Online to complete the provisioning.

  **Note:** Your users' personal sites must be provisioned before you can access their notebooks. The OneNote API will attempt to auto-provision their sites if needed. <!--The API returns error [30105](../howto/onenote-error-codes.md#30105) at the start of the process and error [30106](../howto/onenote-error-codes.md#30106) until the provisioning is complete.-->

- **Associate your Office 365 subscription with an Azure subscription**

  This allows you to register and manage your app in Azure AD. (*[learn more](https://azure.microsoft.com/en-us/documentation/articles/active-directory-manage-o365-subscription/)*)

  If you don't have an Azure subscription, do Option 1 in the next section. If you do have one, do Option 2. 

**Important!** You and your users must have an Office 365 account with a valid Office 365 license. User accounts without valid licenses won’t be able to see any notebooks on OneNote Online, and API calls to their notebooks will fail. Office 365 admins can [check status and assign unassign licenses](https://support.office.com/en-ca/article/Assign-or-unassign-licenses-for-Office-365-for-business-997596b5-4173-4627-b915-36abac6786dc#__toc383721312).

>MSDN subscribers: You may be eligible for a free Office 365 Developer subscription, as well as added savings when you activate your Azure benefit. Check your benefits on the [MSDN subscriptions page](https://msdn.microsoft.com/subscriptions/manage/default.aspx).


**Associate your Azure subscription with your Office 365 subscription**

**Option 1:** Sign up for an Azure subscription using admin credentials for your Office 365 subscription. Do this if you don't have an Azure subscription. This process associates the subscriptions.

1. Sign into the [Azure Management Portal][aad-portal] with your Office 365 admin credentials (a work or school account like *someone@example.com* or *someone@example.onmicrosoft.com* ).

2. On the No subscriptions found page, choose **Sign up for Microsoft Azure**. The Sign up page will load, showing some information from your Office 365 subscription. This account will become a service administrator for the new Azure subscription. 
  
  The Sign up experience depends on whether you have a trial or paid Office 365 subscription:

   **If you have a trial subscription**, enter your payment information on the Free Trial page. You won't be charged unless you decide to change to a paid subscription.

   If you agree to the subscription agreement, offer details, and privacy statement, check the box and choose **Purchase**. The Subscriptions page for your new Azure account opens. Trial subscriptions are issued a $200.00 credit that can be used within 30 days. You can cancel the subscription from this page at any time.

   **If you have a paid subscription**, complete your contact information and then choose **Sign up**. After your subscription is created, choose **Start managing my service** to open the Azure Management Portal.

**Option 2:** Associate an existing Azure subscription with an Office 365 subscription. Do this you have a Microsoft account that is a service administrator or co-administrator for your Azure subscription. This process makes the Microsoft account a global administrator of the Office 365 tenant. 

1. Sign into the [Azure Management Portal][aad-portal] with your Microsoft account credentials (such as *someone@live.com*).

2. In the drawer at the bottom of the page, choose **New > App services > Active Directory > Directory > Custom Create**.

3. In the Add directory window, choose **Use existing directory** for the directory.

4. Choose **I am ready to be signed out now**, and click the check mark. This signs you out of the portal.

5. Sign back in using the global admin credentials for the Office 365 tenant that you want to associate (a work or school account like *someone@example.com* or *someone@example.onmicrosoft.com*).

6. When asked whether to use the directory with Azure, choose **continue > Sign out now**.

7. Close the browser and then reopen the [Azure Management Portal][aad-portal].

8. Sign in again with your Microsoft account credentials, and choose **Active Directory** in the navigation pane. Your Office 365 directory should be listed on the Directory tab.


**Register your app on the Azure Management Portal**
  
1. Sign in to the [Azure Management Portal][aad-portal]. Use the admin credentials for your Azure subscription. 

2. In the navigation pane, choose **Active Directory**. 

3. Choose the directory where you want to register your application, and then open the Applications tab.

4. In the drawer at the bottom of the page, choose **Add > Add an application my organization is developing**. 

5. Enter a friendly name for the application and choose the application type: 

  <p id="top-padding">**Web application or web API** (browser-based or server apps)</p>
  <p id="indent"> a. Choose **Web application and/or web API**.</p>
  <p id="indent"> b. For the sign-on URL, enter the URL where users sign in and use your app.</p>
  <p id="indent"> c. For the app ID URI, enter a unique identifier for your app. This must be in a verified custom domain.</p>
  <p id="indent"> d. For the reply URL, enter the URL to redirect to in response to an OAuth 2.0 request. This doesn't have to be a physical endpoint, but it must be a valid URI.</p>
  <p id="indent"> e. To make the app available to external Azure tenants, choose **Yes** for **Application is multi-tenant**.</p>
  <p id="outdent">**Native client application** (apps installed on a device)</p>
  <p id="indent"> a. Choose **Native client application**.</p>
  <p id="indent"> b. Enter a redirect URI to redirect to in response to an OAuth 2.0 request. This doesn't have to be a physical endpoint, but it must be a valid URI.</p>   

<br />
For web apps, Azure generates both a client ID and app secret (or key). For native client apps, Azure generates a client ID. Save these values.

See the [Office 365 documentation](../howto/add-common-consent-manually.md) for detailed instructions about registering apps.


<a name="onenote-perms-aad"></a>
### Choose OneNote permission scopes (enterprise apps)

Permission scopes represent levels of access to OneNote content. You request the permissions that your app needs, and users grant or deny access when they sign into your app. Users can only grant permissions that they have.

1. In the [Azure Management Portal][aad-portal], in the **Permissions to other applications** section of the app configuration page, choose **Add application**.

2. Choose the OneNote application, and then click the check mark in the lower-right corner. If OneNote isn't listed, make sure you've [provisioned OneDrive for Business for your tenant](#register-aad).

3. Choose the lowest level of permissions that your app needs to do its work, and save your changes. You can request multiple scopes.

<br />
**Scopes for personal notebooks that are owned by the current user**

If you're **only** working with personal notebooks on OneDrive for Business, choose from the following scopes.

| Scope (enterprise) | Permission in Azure portal | Description |  
|:-------|:------|:------|  
| Notes.Create | Create pages in OneNote notebooks | <p>Can view the titles of your notebooks and sections; create new pages in any location.</p><p>Cannot view or edit existing pages.</p> |  
| Notes.ReadWrite.CreatedByApp | Application-only OneNote notebook access | <p>Can view the titles of your notebooks and sections; create new pages; rename sections; view and modify pages created by the app.</p><p>Cannot view or modify pages created by other apps or in password protected sections.</p> |  
| Notes.Read | View OneNote notebooks | <p>Can view the contents of your notebooks and sections.</p><p>Cannot create new pages; modify existing pages; access password protected sections.</p> |  
| Notes.ReadWrite | View and modify OneNote notebooks | <p>Can view the titles of your notebooks and sections; view and modify all your pages; create new pages; rename sections.</p><p>Cannot access password protected sections.</p> |  

<br />
**Scopes for site and group notebooks that the current user can access**

If you're working with SharePoint site notebooks or unified group notebooks, choose from the following scopes. These permissions also apply to the current user's personal notebooks, but not to personal notebooks that are shared by other users. Accessing shared personal content is currently not supported.

| Scope (enterprise) | Permission in Azure portal | Description |  
|:-------|:------|:------| 
| Notes.Read.All | View OneNote notebooks in your organization | <p>Can view the contents of notebooks and sections in all notebooks that the signed-in user has access to.</p><p>Cannot create new pages; modify existing pages; access password protected sections.</p>|  
| Notes.ReadWrite.All | View and modify OneNote notebooks in your organization | <p>Can view the titles of notebooks and sections; view and modify all pages; rename all sections; create new pages in all notebooks that the signed-in user has access to.</p><p>Cannot access password protected sections.</p>|  

<br />
**Scopes for groups**

If you're accessing group notebooks, you'll need a Group permission scope to get the group ID. These permissions require administrator rights.

| Scope (enterprise) | Permission in Azure portal | Description |  
|:-------|:------|:------|  
| Group.Read.All | Read all groups | Can read all group properties and memberships; read group calendar and conversations on public groups and groups the signed in user is a member of. |  
| Group.ReadWrite.All | Read and write all groups | Can create groups on behalf of the signed-in user and read all group properties and memberships; update group properties and memberships for groups the signed-in user owns; read and write group calendar and conversations on public groups and groups the signed-in user is a member of. |  

<!--These Group permissions also apply to OneNote operations on group notebooks. So if you're **only** accessing group notebooks, you don't need to request Notes permissions if the Group permissions you request provide the read/write access you need.-->
For permissions used to access personal notebooks on OneDrive, see [Choose OneNote permissions (consumer apps)](#onenote-perms-msa).


<a name="sign-in-aad"></a>
### Sign users in and get an access token (enterprise apps)

Your app initiates the sign-in process by contacting the authorization service. If users aren't already signed in or haven't already consented, the service prompts them for credentials and to consent to the permissions requested by your app. If authentication and authorization are successful, you'll receive an access token that you include in your requests to the OneNote API.

**Important!** Treat access tokens and refresh tokens as securely as you would a user's password.

>Depending on your platform, you might be able to use an [SDK](#sdks) to simplify the auth flows.

Getting an access token is a two-step process: 

1. Sign the user in and get an authorization code.
2. Exchange the code for an access token.


<br />
This process represents the [Authorization Code Grant Flow](https://msdn.microsoft.com/library/azure/dn645542.aspx). If you want to use the implicit flow, you'll need to edit the manifest file. See *Configure your app to allow the OAuth 2.0 implicit grant flow* in [Register your brower-based web app](../howto/add-common-consent-manually.md#bk_RegisterWebApp).

<br />
**Step 1.** Sign the user in and get an authorization code. To start the sign-in process, load the following URL request in a web browser or web-browser control. 

The URL below uses the *common* tenant endpoint, which is valid for any application. <!--To scope your app to your tenant, use the tenant ID instead.-->

```
https://login.microsoftonline.com/common/oauth2/authorize
  ?response_type=code
  &client_id={client-id}
  &redirect_uri={redirect-uri}
  &resource=https://onenote.com/
```

		
| Required query string parameter |  Description  |  
|------|-------|  
| response_type | The type of authentication flow you're using. In this case, *code*. |  
| client_id | The client ID created for your application. |   
| redirect_uri | The redirect URL for your application. |
| resource | The resource you need access to. In this case, *https://onenote.com/* |
 
Upon successful authentication and authorization, the web browser redirects to your redirect URI with a *code* parameter appended to the URL, as shown in the following example. 
 Copy the *code* value to use in step 2. This code is valid for a few minutes.

```
https://your-redirect-uri/
  ?code=AAABAA...AA
  &session_state=d56e3523-614e-4fbe-bf89-3ba0f065954b
```


**Step 2.** Exchange the authorization code for an access token and refresh token. Send the following HTTP request with a properly encoded URL string in the message body.

```
POST https://login.microsoftonline.com/common/oauth2/token
Content-Type: application/x-www-form-urlencoded

grant_type=authorization_code
&client_id={client-id}
&client_secret={client-secret}
&redirect_uri={redirect-uri}
&code={code}
&resource=https://onenote.com/
```

| Required body parameter | Description |  
|------|------|  
| grant_type | The grant type of the request. In this case, *authorization_code*. |  
| client_id | The client ID created for your application. |  
| client_secret | Web applications and web APIs only. The client secret created for your application. |  
| code | The code you received as a URL parameter in the previous step. |  
| redirect_uri | The redirect URL for your application. This must match the **redirect_uri** in the first request. |  
| resource | The resource you need access to. In this case, *https://onenote.com/* |  

If successful, the response contains a JSON string that includes the **access_token** and **refresh_token**, as shown in the following example. The access token is valid for the number of seconds specified in the **expires_in** property. 

```json
{
  "token_type":"Bearer",
  "expires_in":"3600",
  "scope":"Notes.ReadWrite",
  "expires_on":"1446588136",
  "not_before":"1446584236",
  "resource":"https://onenote.com/",
  "access_token":"eyJ0eX...2-w",
  "refresh_token":"AAABAAA...IAA",
  "id_token":"eyJ0eX...fQ."
}
```

See [Authorization Code Grant Flow](https://msdn.microsoft.com/en-us/library/azure/dn645542.aspx) to learn more about the Azure AD implementation of the code grant flow, including the additional parameters you can use in the requests. 


**Include the access token in your request to the OneNote API**

All your requests to the OneNote API must send the access token as a bearer token in the **Authorization** header. For example, the following request gets five of your notebooks, sorted alphabetically by name:

```
GET https://www.onenote.com/api/v1.0/me/notes/notebooks?top=5
Authorization: Bearer {access-token}
```

Access tokens are only valid for an hour, so you'll need to get fresh tokens when they expire. You should check the token's expiration before using it, and get a new access token if needed. Users can remain signed in, and they don't have to consent to permissions again unless they sign out or revoke permissions.


<a name="get-new-access-token-aad"></a>
### Get a new access token after it expires (enterprise apps)

You can request a new access token by using the refresh token or by repeating the auth process from the beginning.

When an access token expires, requests to the API return a `401 Unauthorized` response. Your app should handle this response and check the token expiration before sending requests.
  
Send the following HTTP request with a properly encoded URL string in the message body.

The URL in the following example uses the *common* tenant endpoint, which is valid for any application. <!--To scope your app to a specific tenant, use the tenant ID instead.-->

```http
POST https://login.microsoftonline.com/common/oauth2/token
Content-Type: application/x-www-form-urlencoded

grant_type=refresh_token
&client_id={client-id}
&client_secret={client-secret}
&redirect_uri={redirect-uri}
&refresh_token={refresh-token}
&resource={resource-id}
```

| Required body parameter | Description |  
|------|-------|  
| grant_type | The grant type of the request. In this case, *refresh_token*. |  
| client_id | The client ID created for your application. |  
| client_secret | Web applications and web APIs only. The client secret created for your application. |  
| redirect_uri  | The redirect URL for your application. |  
| refresh_token | The refresh token you received previously. |  
| resource | The resource you need access to. In this case, *https://onenote.com/* |   

If successful, the response for the POST request contains a JSON string that includes the **access_token** and **refresh_token**, as shown in the following example.

```json
{
  "token_type":"Bearer",
  "expires_in":"3600",
  "scope":"Group.Read.All Notes.ReadWrite",
  "expires_on":"1447656020",
  "not_before":"1447652120",
  "resource":"https://onenote.com/",
  "access_token":"eyJ0eX...Jww",
  "refresh_token":"AAABAAA...IAA"
}
```

Update your stored tokens to ensure that your app has tokens with the longest lifespan.


<a name="sdks"></a>
## SDKs for OneNote development

[!INCLUDE [sdks](../includes/onenote/sdks.xml)]

 
<a name="errors"></a>
## Errors
If there are errors with authentication, the web browser is redirected to an error page. The error page presents an end-user friendly message, but the URL for the page includes additional parameters that may help you 
 debug what happened. The URL parameters are included as a bookmark, for example: `#error={error_code}&error_description={message}`

If the user chooses not to provide consent to your application, the flow will redirect to your redirect URL and include the error parameters. 

For detailed information about handling errors, see [Error Handling in OAuth 2.0][oauth2-errors].


<a name="see-also"></a>
## Additional resources

- [OneNote development](../howto/onenote-landing.md)
- [Develop with the OneNote APIs](../howto/onenote-get-content.md)
- [OneNote Dev Center](http://dev.onenote.com/)
- [OneNote Developer Blog](http://go.microsoft.com/fwlink/?LinkID=390183)
- [OneNote development questions on Stack Overflow](http://go.microsoft.com/fwlink/?LinkID=390182) 
- [OneNote GitHub repos](http://go.microsoft.com/fwlink/?LinkID=390178)


[msa-portal]: http://go.microsoft.com/fwlink/p/?LinkId=193157
[aad-portal]: https://manage.windowsazure.com/
[oauth2-errors]: https://msdn.microsoft.com/library/azure/dn645540.aspx
