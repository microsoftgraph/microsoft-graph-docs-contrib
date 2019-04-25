---
title: "Choose an authentication provider"
description: "Learn how to choose scenario specific authentication providers for your application."
---

# Choose an authentication provider based on OAuth flow

Authentication providers simplify getting an access token by abstracting the parameters required by the authentication client libraries. The Microsoft Graph authentication providers typically wrap and simplify the Microsoft Authentication Library (MSAL) for each platform. The Microsoft Graph authentication providers map to an OAuth grant flow. You'll need to know which OAuth grant flow to use for your application in order to select the appropriate authentication provider for your application. We describe the available authentication providers for each platform based on the OAuth grant flow.

## Authorization code OAuth flow

The authorization code flow enables native and web apps to securely obtain tokens in the name of the user. Learn more by reading [Microsoft identity platform and OAuth 2.0 authorization code flow](https://docs.microsoft.com/en-us/azure/active-directory/develop/v2-oauth2-auth-code-flow).

# [C#](#tab/CS)

```csharp
IConfidentialClientApplication clientApplication = AuthorizationCodeProvider.CreateClientApplication(clientId, redirectUri, clientCredential);
AuthorizationCodeProvider authenticationProvider = new AuthorizationCodeProvider(clientApplication, scopes);
```

# [Javascript](#tab/Javascript)

Authorization code, client credential, and on-behalf-of OAuth flows require that you implement a custom authentication provider at this time. Read [Using Custom Authentication Provider](https://github.com/microsoftgraph/msgraph-sdk-javascript/blob/dev/docs/CustomAuthenticationProvider.md) for more information.

# [Java](#tab/Java)

```java
AuthorizationCodeProvider authProvider = new AuthorizationCodeProvider(
                                                    clientId,
                                                    scopes,
                                                    authorizationCode,
                                                    redirectUri,
                                                    clientSecret);
```

# [Android](#tab/Android)

Not applicable.

# [Objective-C](#tab/Objective-C)

Not applicable.

# [PHP](#tab/PHP)

Not available, yet. Please support or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

# [Ruby](#tab/Ruby)

Not available, yet. Please support or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

---

## Client credential OAuth flow

The client credential flow enables service applications to run without user interaction. Access is based on the identity of the application. Learn more by reading [Microsoft identity platform and the OAuth 2.0 client credentials flow](https://docs.microsoft.com/en-us/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow).

# [C#](#tab/CS)

```csharp
IConfidentialClientApplication clientApplication = ClientCredentialProvider.CreateClientApplication(clientId, clientCredential);
ClientCredentialProvider authenticationProvider = new ClientCredentialProvider(clientApplication);
```

# [Javascript](#tab/Javascript)

Authorization code, client credential, and on-behalf-of OAuth flows require that you implement a custom authentication provider at this time. Read [Using Custom Authentication Provider](https://github.com/microsoftgraph/msgraph-sdk-javascript/blob/dev/docs/CustomAuthenticationProvider.md) for more information.

# [Java](#tab/Java)

```java
ClientCredentialProvider authProvider = new ClientCredentialProvider(
                                                    clientId,
                                                    scopes,
                                                    clientSecret,
                                                    tenant,
                                                    endpoint);
```

# [Android](#tab/Android)

Not applicable.

# [Objective-C](#tab/Objective-C)

Not applicable.

# [PHP](#tab/PHP)

Not available, yet. Please support or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

# [Ruby](#tab/Ruby)

Not available, yet. Please support or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

---

## On-behalf-of OAuth flow

The on-behalf-of flow is applicable when your application calls a service/web API which in turns calls the Microsoft Graph API. Learn more by reading [Microsoft identity platform and OAuth 2.0 On-Behalf-Of flow](https://docs.microsoft.com/en-us/azure/active-directory/develop/v2-oauth2-on-behalf-of-flow)

# [C#](#tab/CS)

```csharp
IConfidentialClientApplication clientApplication = OnBehalfOfProvider.CreateClientApplication(clientId, redirectUri, clientCredential);
OnBehalfOfProvider authenticationProvider = new OnBehalfOfProvider(clientApplication, scopes);
```

# [Javascript](#tab/Javascript)

Authorization code, client credential, and on-behalf-of OAuth flows require that you implement a custom authentication provider at this time. Read [Using Custom Authentication Provider](https://github.com/microsoftgraph/msgraph-sdk-javascript/blob/dev/docs/CustomAuthenticationProvider.md) for more information.

# [Java](#tab/Java)

Not available, yet. Please support or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

# [Android](#tab/Android)

Not applicable.

# [Objective-C](#tab/Objective-C)

Not applicable.

# [PHP](#tab/PHP)

Not available, yet. Please support or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

# [Ruby](#tab/Ruby)

Not available, yet. Please support or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

---

## Implicit grant OAuth flow

The implicit grant flow is used in browser based applications. Learn more by reading [Microsoft identity platform and Implicit grant flow](https://docs.microsoft.com/en-us/azure/active-directory/develop/v2-oauth2-implicit-grant-flow).

# [C#](#tab/CS)

Not applicable.

# [Javascript](#tab/Javascript)

```javascript
const clientId = "your_client_id"; // Client Id of the registered application
const callback = (errorDesc, token, error, tokenType) => {};
// An Optional options for initializing the MSAL @see https://github.com/AzureAD/microsoft-authentication-library-for-js/wiki/MSAL-basics#configuration-options
const options = {
	redirectUri: "Your redirect URI",
};
const graphScopes = ["user.read", "mail.send"]; // An array of graph scopes

// Initialize the MSAL @see https://github.com/AzureAD/microsoft-authentication-library-for-js/wiki/MSAL-basics#initialization-of-msal
const userAgentApplication = new Msal.UserAgentApplication(clientId, undefined, callback, options);
const authProvider = new MicrosoftGraph.MSALAuthenticationProvider(userAgentApplication, graphScopes);

const options = {
	authProvider, // An instance created from previous step
};
const Client = MicrosoftGraph.Client;
const client = Client.initWithMiddleware(options);
```

# [Java](#tab/Java)

Not applicable.

# [Android](#tab/Android)

Not applicable.

# [Objective-C](#tab/Objective-C)

Not applicable.

# [PHP](#tab/PHP)

Not applicable.

# [Ruby](#tab/Ruby)

Not applicable.

---

## Device code OAuth flow

The device code flow enables sign in to devices by way of another device. Learn more by reading [Microsoft identity platform and the OAuth 2.0 device code flow](https://docs.microsoft.com/en-us/azure/active-directory/develop/v2-oauth2-device-code).

# [C#](#tab/CS)

```csharp
IPublicClientApplication clientApplication = DeviceCodeProvider.CreateClientApplication(clientId);
DeviceCodeProvider authenticationProvider = new DeviceCodeProvider(clientApplication, scopes);
```

# [Javascript](#tab/Javascript)

Not available, yet. Please support or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

# [Java](#tab/Java)

Not available, yet. Please support or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

# [Android](#tab/Android)

Not applicable.

# [Objective-C](#tab/Objective-C)

Not applicable.

# [PHP](#tab/PHP)

Not available, yet. Please support or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

# [Ruby](#tab/Ruby)

Not available, yet. Please support or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

---

## Integrated windows flow

The integrated windows flow provides a way for Windows machines to silently acquire an access token when they are domain joined. Learn more by reading [Integrated Windows Authentication](https://github.com/AzureAD/microsoft-authentication-library-for-dotnet/wiki/Integrated-Windows-Authentication).

# [C#](#tab/CS)

```csharp
IPublicClientApplication clientApplication = IntegratedWindowsAuthenticationProvider.CreateClientApplication(clientId);
IntegratedWindowsAuthenticationProvider authenticationProvider = new IntegratedWindowsAuthenticationProvider(clientApplication, scopes);
```

# [Javascript](#tab/Javascript)

Not applicable.

# [Java](#tab/Java)

Not applicable.

# [Android](#tab/Android)

Not applicable.

# [Objective-C](#tab/Objective-C)

Not applicable.

# [PHP](#tab/PHP)

Not applicable.

# [Ruby](#tab/Ruby)

Not applicable.

---

## Interactive flow

The interactive flow is used by mobile applications (Xamarin and UWP) and desktops applications to call Microsoft Graph in the name of a user. Learn more by reading [Acquiring tokens interactively](https://github.com/AzureAD/microsoft-authentication-library-for-dotnet/wiki/Acquiring-tokens-interactively).

# [C#](#tab/CS)

```csharp
IPublicClientApplication clientApplication = InteractiveAuthenticationProvider.CreateClientApplication(clientId);
InteractiveAuthenticationProvider authenticationProvider = new InteractiveAuthenticationProvider(clientApplication, scopes);
```

# [Javascript](#tab/Javascript)

Not available, yet. Please support or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

# [Java](#tab/Java)

Not available, yet. Please support or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

# [Android](#tab/Android)

```java
PublicClientApplication publicClientApplication = new PublicClientApplication(getApplicationContext(), "CLIENT_ID_OF_YOUR_APPLICATION");
MSALAuthenticationProvider msalAuthenticationProvider = new MSALAuthenticationProvider(
    getActivity(),
    getApplication(),
    publicClientApplication,
    scopes);

IGraphServiceClient graphClient =
  GraphServiceClient
    .builder()
    .authenticationProvider(msalAuthenticationProvider)
    .buildClient();
```

# [Objective-C](#tab/Objective-C)

```objc
NSError *error = nil;
MSALPublicClientApplication *application =
[[MSALPublicClientApplication alloc] initWithClientId:@"<your-client-id-here>"
error:&error];

MSALAuthenticationProvider *authenticationProvider = [[MSALAuthenticationProvider alloc] initWithPublicClientApplication:application
                                                                                                               andScopes:<array-of-scopes-for-which-you-need-access-token>];
```

# [PHP](#tab/PHP)

Not applicable.

# [Ruby](#tab/Ruby)

Not applicable.

---

## Resource owner password credential grant OAuth flow

The resource owner password credential flow allows an application to sign in a user by using their username and password. You should only use this flow when you cannot use any of the other OAuth flows. Learn more by reading [Microsoft identity platform and the OAuth 2.0 resource owner password credential](https://docs.microsoft.com/en-us/azure/active-directory/develop/v2-oauth-ropc)



# [C#](#tab/CS)

```csharp
IPublicClientApplication clientApplication = UsernamePasswordProvider.CreateClientApplication(clientId);
UsernamePasswordProvider authenticationProvider = new UsernamePasswordProvider(clientApplication, scopes);
```

# [Javascript](#tab/Javascript)

Not available, yet. Please support or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

# [Java](#tab/Java)

```java
UsernamePasswordProvider authProvider = new UsernamePasswordProvider(
                                                    clientId,
                                                    scopes,
                                                    username,
                                                    password);
```

# [Android](#tab/Android)

Not applicable.

# [Objective-C](#tab/Objective-C)

Not applicable.

# [PHP](#tab/PHP)

Not available, yet. Please support or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

# [Ruby](#tab/Ruby)

Not available, yet. Please support or open a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests) if this is important to you.

---

## Next steps

<!-- Need link to instructions on how to register an app. -->

* Authentication providers require an client id. You'll want to [register your application](https://portal.azure.com/) once you've setup your authentication provider.
* Let us know if a required OAuth flow isn't currently supported by upvoting or opening a [Microsoft Graph feature request](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests).