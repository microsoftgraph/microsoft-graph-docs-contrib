# Register your app with the Azure AD v2.0 endpoint

To get an access token to use when calling Microsoft Graph, your app must be registered with Azure AD. When you register your app, Azure AD assigns it an application ID, which uniquely identifies it within Azure AD identity management system. Depending on the kind of app you register, you may also be assigned or asked to enter a redirect URI, and you may need to create an application secret, either a password or key-value pair that your app can use to authenticate with Azure AD. 

> **Note:** This article primarily covers registering apps with the Azure AD v2.0 endpoint. To register your app with the Azure AD endpoint, see [Azure AD endpoint considerations](#Azure-AD-endpoint-considerations) below.
> 
> Also, be aware that if you've previously registered apps in the Microsoft Azure Management portal, those apps will not be listed in the App Registration Portal. Manage those apps in the Azure Management portal. 


## Register your app for the Azure AD v2.0 endpoint
For the Azure AD v2.0 endpoint, you register your app with the [Microsoft App Registration Portal](https://apps.dev.microsoft.com) (https://apps.dev.microsoft.com). You can use either an organizational identity or a personal Microsoft identity to register an app. Depending on the type of app you are developing, you will need to copy one or more properties during registration to use when you configure authentication and authorization for your app. 

The following screenshot shows an example Web app registration that has been configured with a password and Implicit Grant. 
![Web app registration with password and Implicit Grant.](./images/v2-web-registration.png)

To register your app, follow these steps; be sure to copy the indicated values to use when configuring authorization for your app:

1. Sign into the [Microsoft App Registration Portal](https://apps.dev.microsoft.com/).

2. Choose **Add an app**.
   > Note: If you signed in with an organizational account, select the **Add an app** button for **Converged applications**. 

3. Enter a name for the app, and choose **Create application**.

	The registration page displays, listing the properties of your app.

4. Copy the application ID. This is the unique identifier for your app.

	You'll use the application ID to configure the app.

5. Under **Platforms**, choose **Add Platform**, and select the appropriate platform for your app:
	
	**For native or mobile apps**:

    You'll need the following properties to configure your app:
	- Application Id
	- Redirect URI
	- Application Secret

	1. Select **Native Application**.

	2. Copy the **Built-in redirect URIs** values to the clipboard. You'll need this to configure your app.

		The redirect URI is a unique URI provided for each application to ensure that messages sent to that URI are only sent to that application. 

	**For Web apps**:

     You'll need the following properties to configure your app:
	- Application Id
	- Redirect URL
	- Application Secret

	1. Select **Web**.
	2. If you’re using the OpenID Connect hybrid flow, make sure the **Allow Implicit Flow** check box is selected. (The OpenID Connect hybrid flow is the default flow used by the OpenID Connect OWIN middleware.)
		
		The **Allow Implicit Flow** option enables the OpenID Connect hybrid flow. During authentication, this flow enables the app to receive both sign-in info (the id_token) and artifacts (in this case, an authorization code) that the app uses to obtain an access token. 

	3. Specify a Redirect URL.
		
		The redirect URL is the location in your app that the Azure AD v2.0 endpoint calls when it has processed the authentication request.

	4. Under **Application Secrets**, choose **Generate New Password**. Copy the app secret from the **New password generated** dialog box.
		> **Important** You must copy the app secret before you close the **New password generated** dialog. After you close the dialog, you cannot retrieve the secret. 
			
	For **Service apps**:

	 You'll need the following properties to configure your app:
	 - Application Id
	 - Application secret
	 - Redirect URL for the access token request
	 - Redirect URL for administrator consent request (optional)

	1. Select **Web**.
	2. For a pure service app, you do not need to select the **Allow Implicit Flow** check box.
		
		The **Allow Implicit Flow** option enables the OpenID Connect implicit and hybrid flows. For a pure service app, you won't need OpenID Connect.

	3. Specify one or more Redirect URLs.
		
		The redirect URL is the location in your app that the Azure AD v2.0 endpoint calls when it has processed the authentication request. For service apps that provide an in-app administrator consent experience, you might also specify a redirect URL that the Azure AD endpoint should call with the result of a request to the `/adminconsent` endpoint. For more information, see [Get access as a service](azure_ad_v2_service_auth). 
	
	4. Under **Application Secrets**, choose **Generate New Password**. Copy the app secret from the **New password generated** dialog box.
		> **Important** You must copy the app secret before you close the **New password generated** dialog. After you close the dialog, you cannot retrieve the secret. 

6. Choose **Save**.

For more detail about the App Registration Portal and the properties you can configure for your App, see [App registration reference](https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-v2-registration-portal).  

## Azure AD endpoint considerations

There are some scenarios that will require you to use the Azure AD endpoint. For example:

- Your existing app already uses the Azure AD endpoint.
- Your app is a Web API that calls Microsoft Graph. This is because the Azure Ad v2.0 endpoint does not yet support calling a Web API, like Microsoft Graph, from within another Web API (the OAuth 2.0 on behalf of flow).
- You have enterprise customers that may use enterprise mobility features like [conditional device access](https://azure.microsoft.com/documentation/articles/active-directory-conditional-access-device-policies/) that are not yet supported with the Azure AD v2.0 endpoint.

For more detailed information about why you might want to use the Azure AD endpoint instead of the Azure AD v2.0 endpoint, see [Should I use the v2.0 endpoint?](https://docs.microsoft.com/azure/active-directory/develop/active-directory-v2-limitations).  


If you decide that your app needs to use the Azure AD endpoint, you use the [Azure portal](https://aka.ms/aadapplist) to register and manage your app. For guidance on using the Azure portal to add an app, see [Integrating applications with Azure Active Directory: Adding an application](https://docs.microsoft.com/azure/active-directory/develop/active-directory-integrating-applications#adding-an-application).

There are several differences in the registration process between the Azure portal and the Microsoft App Registration portal. For example:

- Your app will require a different application Id (client Id) for each platform.
- If your app is a multi-tenant app, you must explicitly configure it to be multi-tenant at the portal.
- You must pre-configure all the permissions (including Microsoft Graph permissions) that your app needs at the portal. 


