---
title: "Choose a Microsoft Graph authentication provider"
description: "Learn how to choose scenario-specific authentication providers for your application."
ms.localizationpriority: medium
author: MichaelMainer
---

<!-- markdownlint-disable MD001 MD024 MD025 -->

# Choose a Microsoft Graph authentication provider based on scenario

Authentication providers implement the code required to acquire a token using the Microsoft Authentication Library (MSAL); handle a number of potential errors for cases like incremental consent, expired passwords, and conditional access; and then set the HTTP request authorization header. The following table lists the set of providers that match the scenarios for different [application types](/azure/active-directory/develop/v2-app-types).

| Scenario                                                                                               | Flow/Grant         | Audience               | Provider |
|--------------------------------------------------------------------------------------------------------|--------------------|------------------------|-----|
| [Single Page App](/azure/active-directory/develop/scenario-spa-acquire-token)                          | Authorization Code |                        |     |
|                                                                                                        | with PKCE          | Delegated Consumer/Org | [Authorization code provider](#authorization-code-provider) |
| [Web App that calls web APIs](/azure/active-directory/develop/scenario-web-app-call-api-acquire-token) |                    |                        |     |
|                                                                                                        | Authorization Code | Delegated Consumer/Org | [Authorization code provider](#authorization-code-provider) |
|                                                                                                        | Client Credentials | App Only               | [Client credentials provider](#client-credentials-provider) |
| [Web API that calls web APIs](/azure/active-directory/develop/scenario-web-api-call-api-acquire-token) |                    |                        |     |
|                                                                                                        | On Behalf Of       | Delegated Consumer/Org | [On-behalf-of provider](#on-behalf-of-provider) |
|                                                                                                        | Client Credentials | App Only               | [Client credentials provider](#client-credentials-provider) |
| [Desktop app that calls web APIs](/azure/active-directory/develop/scenario-desktop-acquire-token)      |                    |                        |     |
|                                                                                                        | Interactive        | Delegated Consumer/Org | [Interactive provider](#interactive-provider) |
|                                                                                                        | Integrated Windows | Delegated Org          | [Integrated Windows provider](#integrated-windows-provider) |
|                                                                                                        | Resource Owner     | Delegated Org          | [Username/password provider](#usernamepassword-provider) |
|                                                                                                        | Device Code        | Delegated Org          | [Device code provider](#device-code-provider) |
| [Daemon app](/azure/active-directory/develop/scenario-daemon-acquire-token)                            |                    |                        |     |
|                                                                                                        | Client Credentials | App Only               | [Client credentials provider](#client-credentials-provider) |
| [Mobile app that calls web APIs](/azure/active-directory/develop/scenario-mobile-acquire-token)        |                    |                        |     |
|                                                                                                        | Interactive        | Delegated Consumer/Org | [Interactive provider](#interactive-provider) |

> [!NOTE]
> Java and Android developers need to add the [azure-identity](/java/api/overview/azure/identity-readme) library to get access to the different credentials types. .NET developers need to add the [Azure.Identity](/dotnet/api/azure.identity) package to get access to the different credentials types.

## Authorization code provider

The authorization code flow enables native and web apps to securely obtain tokens in the name of the user. To learn more, see [Microsoft identity platform and OAuth 2.0 authorization code flow](/azure/active-directory/develop/v2-oauth2-auth-code-flow).

# [C#](#tab/CS)

```csharp
var scopes = new[] { "User.Read" };

// Multi-tenant apps can use "common",
// single-tenant apps must use the tenant ID from the Azure portal
var tenantId = "common";

// Values from app registration
var clientId = "YOUR_CLIENT_ID";
var clientSecret = "YOUR_CLIENT_SECRET";

// For authorization code flow, the user signs into the Microsoft
// identity platform, and the browser is redirected back to your app
// with an authorization code in the query parameters
var authorizationCode = "AUTH_CODE_FROM_REDIRECT";

var options = new TokenCredentialOptions
{
    AuthorityHost = AzureAuthorityHosts.AzurePublicCloud
};

// https://docs.microsoft.com/dotnet/api/azure.identity.authorizationcodecredential
var authCodeCredential = new AuthorizationCodeCredential(
    tenantId, clientId, clientSecret, authorizationCode, options);

var graphClient = new GraphServiceClient(authCodeCredential, scopes);
```

# [Javascript](#tab/Javascript)

### Using @azure/msal-browser for  browser applications

```javascript

const {
    PublicClientApplication,
    InteractionType,
    AccountInfo
} = require("@azure/msal-browser");

const {
    AuthCodeMSALBrowserAuthenticationProvider,
    AuthCodeMSALBrowserAuthenticationProviderOptions
} = require("@microsoft/microsoft-graph-client/authProviders/authCodeMsalBrowser");

const options: AuthCodeMSALBrowserAuthenticationProviderOptions: {
    account: account, // the AccountInfo instance to acquire the token for.
    interactionType: InteractionType.PopUp, // msal-browser InteractionType
    scopes: ["user.read", "mail.send"] // example of the scopes to be passed
}

// Pass the PublicClientApplication instance from step 2 to create AuthCodeMSALBrowserAuthenticationProvider instance
const authProvider: new AuthCodeMSALBrowserAuthenticationProvider(publicClientApplication, options),
```

### Using @azure/identity for server-side applications

```javascript
const {
    Client
} = require("@microsoft/microsoft-graph-client");
const {
    TokenCredentialAuthenticationProvider
} = require("@microsoft/microsoft-graph-client/authProviders/azureTokenCredentials");
const {
    AuthorizationCodeCredential
} = require("@azure/identity");

const credential = new AuthorizationCodeCredential(
    "<YOUR_TENANT_ID>",
    "<YOUR_CLIENT_ID>",
    "<AUTH_CODE_FROM_QUERY_PARAMETERS>",
    "<REDIRECT_URL>"
);
const authProvider = new TokenCredentialAuthenticationProvider(credential, {
    scopes: [scopes]
});

```

# [Java](#tab/Java)

```java
final AuthorizationCodeCredential authCodeCredential = new AuthorizationCodeCredentialBuilder()
        .clientId(clientId)
        .clientSecret(clientSecret) //required for web apps, do not set for native apps
        .authorizationCode(authorizationCode)
        .redirectUrl(redirectUri)
        .build();

final TokenCredentialAuthProvider tokenCredentialAuthProvider = new TokenCredentialAuthProvider(scopes, authCodeCredential);

final GraphServiceClient graphClient =
  GraphServiceClient
    .builder()
    .authenticationProvider(tokenCredentialAuthProvider)
    .buildClient();

final User me = graphClient.me().buildRequest().get();
```

# [Android](#tab/Android)

Not applicable.

# [Objective-C](#tab/Objective-C)

Not applicable.

# [PHP](#tab/PHP)

Not yet available. Please support or open a [Microsoft Graph feature request](https://techcommunity.microsoft.com/t5/microsoft-365-developer-platform/idb-p/Microsoft365DeveloperPlatform/label-name/Microsoft%20Graph) if this is important to you.

# [Ruby](#tab/Ruby)

Not available, yet. Please vote for or open a [Microsoft Graph feature request](https://techcommunity.microsoft.com/t5/microsoft-365-developer-platform/idb-p/Microsoft365DeveloperPlatform/label-name/Microsoft%20Graph) if this is important to you.

---

## Client credentials provider

The client credential flow enables service applications to run without user interaction. Access is based on the identity of the application. For more information, see [Microsoft identity platform and the OAuth 2.0 client credentials flow](/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow).

# [C#](#tab/CS)

### Using a client secret

```csharp
var scopes = new[] { "User.Read.All" };

// Multi-tenant apps can use "common",
// single-tenant apps must use the tenant ID from the Azure portal
var tenantId = "common";

// Values from app registration
var clientId = "YOUR_CLIENT_ID";
var clientSecret = "YOUR_CLIENT_SECRET";

var options = new TokenCredentialOptions
{
    AuthorityHost = AzureAuthorityHosts.AzurePublicCloud
};

// https://docs.microsoft.com/dotnet/api/azure.identity.clientsecretcredential
var clientSecretCredential = new ClientSecretCredential(
    tenantId, clientId, clientSecret, options);

var graphClient = new GraphServiceClient(clientSecretCredential, scopes);
```

### Using a client certificate

```csharp
var scopes = new[] { "User.Read" };

// Multi-tenant apps can use "common",
// single-tenant apps must use the tenant ID from the Azure portal
var tenantId = "common";

// Values from app registration
var clientId = "YOUR_CLIENT_ID";
var clientCertificate = new X509Certificate2("MyCertificate.pfx");

var options = new TokenCredentialOptions
{
    AuthorityHost = AzureAuthorityHosts.AzurePublicCloud
};

// https://docs.microsoft.com/dotnet/api/azure.identity.clientcertificatecredential
var clientCertCredential = new ClientCertificateCredential(
    tenantId, clientId, clientCertificate, options);

var graphClient = new GraphServiceClient(clientCertCredential, scopes);
```

# [Javascript](#tab/Javascript)

```javascript
const {
    Client
} = require("@microsoft/microsoft-graph-client");
const {
    TokenCredentialAuthenticationProvider
} = require("@microsoft/microsoft-graph-client/authProviders/azureTokenCredentials");
const {
    ClientSecretCredential
} = require("@azure/identity");

const credential = new ClientSecretCredential(tenantId, clientId, clientSecret);
const authProvider = new TokenCredentialAuthenticationProvider(credential, {
    scopes: [scopes]
});

const client = Client.initWithMiddleware({
    debugLogging: true,
    authProvider
    // Use the authProvider object to create the class.
});
```

# [Java](#tab/Java)

```java
final ClientSecretCredential clientSecretCredential = new ClientSecretCredentialBuilder()
        .clientId(clientId)
        .clientSecret(clientSecret)
        .tenantId(tenant)
        .build();

final TokenCredentialAuthProvider tokenCredentialAuthProvider = new TokenCredentialAuthProvider(scopes, clientSecretCredential);

final GraphServiceClient graphClient =
  GraphServiceClient
    .builder()
    .authenticationProvider(tokenCredentialAuthProvider)
    .buildClient();

final User me = graphClient.me().buildRequest().get();
```

# [Android](#tab/Android)

Not applicable.

# [Objective-C](#tab/Objective-C)

Not applicable.

# [PHP](#tab/PHP)

Not available, yet. Please support or open a [Microsoft Graph feature request](https://techcommunity.microsoft.com/t5/microsoft-365-developer-platform/idb-p/Microsoft365DeveloperPlatform/label-name/Microsoft%20Graph) if this is important to you.

# [Ruby](#tab/Ruby)

Not available, yet. Please support or open a [Microsoft Graph feature request](https://techcommunity.microsoft.com/t5/microsoft-365-developer-platform/idb-p/Microsoft365DeveloperPlatform/label-name/Microsoft%20Graph) if this is important to you.

---

## On-behalf-of provider

The on-behalf-of flow is applicable when your application calls a service/web API which in turns calls the Microsoft Graph API. Learn more by reading [Microsoft identity platform and OAuth 2.0 On-Behalf-Of flow](/azure/active-directory/develop/v2-oauth2-on-behalf-of-flow)

# [C#](#tab/CS)

The `Azure.Identity` package does not support the on-behalf-of flow as of version 1.4.0. Instead create a custom authentication provider using MSAL.

```csharp
var scopes = new[] { "User.Read" };

// Multi-tenant apps can use "common",
// single-tenant apps must use the tenant ID from the Azure portal
var tenantId = "common";

// Values from app registration
var clientId = "YOUR_CLIENT_ID";
var clientSecret = "YOUR_CLIENT_SECRET";

var options = new TokenCredentialOptions
{
    AuthorityHost = AzureAuthorityHosts.AzurePublicCloud
};

// This is the incoming token to exchange using on-behalf-of flow
var oboToken = "JWT_TOKEN_TO_EXCHANGE";

var cca = ConfidentialClientApplicationBuilder
    .Create(clientId)
    .WithTenantId(tenantId)
    .WithClientSecret(clientSecret)
    .Build();

// DelegateAuthenticationProvider is a simple auth provider implementation
// that allows you to define an async function to retrieve a token
// Alternatively, you can create a class that implements IAuthenticationProvider
// for more complex scenarios
var authProvider = new DelegateAuthenticationProvider(async (request) => {
    // Use Microsoft.Identity.Client to retrieve token
    var assertion = new UserAssertion(oboToken);
    var result = await cca.AcquireTokenOnBehalfOf(scopes, assertion).ExecuteAsync();

    request.Headers.Authorization =
        new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", result.AccessToken);
});

var graphClient = new GraphServiceClient(authProvider);
```

# [Javascript](#tab/Javascript)

On-behalf-of OAuth flows require that you implement a custom authentication provider at this time. Read [Using Custom Authentication Provider](https://github.com/microsoftgraph/msgraph-sdk-javascript/blob/dev/docs/CustomAuthenticationProvider.md) for more information.

# [Java](#tab/Java)

Not yet available. Please vote for or open a [Microsoft Graph feature request](https://techcommunity.microsoft.com/t5/microsoft-365-developer-platform/idb-p/Microsoft365DeveloperPlatform/label-name/Microsoft%20Graph) if this is important to you.

# [Android](#tab/Android)

Not applicable.

# [Objective-C](#tab/Objective-C)

Not applicable.

# [PHP](#tab/PHP)

Not yet available. Please vote for or open a [Microsoft Graph feature request](https://techcommunity.microsoft.com/t5/microsoft-365-developer-platform/idb-p/Microsoft365DeveloperPlatform/label-name/Microsoft%20Graph) if this is important to you.

# [Ruby](#tab/Ruby)

Not yet available. Please vote for or open a [Microsoft Graph feature request](https://techcommunity.microsoft.com/t5/microsoft-365-developer-platform/idb-p/Microsoft365DeveloperPlatform/label-name/Microsoft%20Graph) if this is important to you.

---

## Implicit provider

Implicit Authentication flow is not recommended due to its [disadvantages](https://datatracker.ietf.org/doc/html/draft-ietf-oauth-browser-based-apps-04#section-9.8.6). Public clients such as native apps and JavaScript apps should now use the authorization code flow with the PKCE extension instead. [Reference](https://oauth.net/2/grant-types/implicit/).

## Device code provider

The device code flow enables sign in to devices by way of another device. For details, see [Microsoft identity platform and the OAuth 2.0 device code flow](/azure/active-directory/develop/v2-oauth2-device-code).

# [C#](#tab/CS)

```csharp
var scopes = new[] { "User.Read" };

// Multi-tenant apps can use "common",
// single-tenant apps must use the tenant ID from the Azure portal
var tenantId = "common";

// Value from app registration
var clientId = "YOUR_CLIENT_ID";

var options = new TokenCredentialOptions
{
    AuthorityHost = AzureAuthorityHosts.AzurePublicCloud
};

// Callback function that receives the user prompt
// Prompt contains the generated device code that use must
// enter during the auth process in the browser
Func<DeviceCodeInfo, CancellationToken, Task> callback = (code, cancellation) => {
    Console.WriteLine(code.Message);
    return Task.FromResult(0);
};

// https://docs.microsoft.com/dotnet/api/azure.identity.devicecodecredential
var deviceCodeCredential = new DeviceCodeCredential(
    callback, tenantId, clientId, options);

var graphClient = new GraphServiceClient(deviceCodeCredential, scopes);
```

# [Javascript](#tab/Javascript)

```javascript
const {
    Client
} = require("@microsoft/microsoft-graph-client");
const {
    TokenCredentialAuthenticationProvider
} = require("@microsoft/microsoft-graph-client/authProviders/azureTokenCredentials");
const {
    DeviceCodeCredential
} = require("@azure/identity");

const credential = new DeviceCodeCredential(tenantId, clientId, clientSecret);
const authProvider = new TokenCredentialAuthenticationProvider(credential, {
    scopes: [scopes]
});

const client = Client.initWithMiddleware({
    debugLogging: true,
    authProvider
    // Use the authProvider object to create the class.
});
```

# [Java](#tab/Java)

```java
final DeviceCodeCredential deviceCodeCredential = new DeviceCodeCredentialBuilder()
                    .clientId(clientId)
                    .challengeConsumer(challenge -> {
                        // lets user know of the challenge
                        System.out.println(challenge.getMessage());
                    })
                    .build();
final TokenCredentialAuthProvider tokenCredentialAuthProvider = new TokenCredentialAuthProvider(scopes, deviceCodeCredential);

final GraphServiceClient graphClient =
  GraphServiceClient
    .builder()
    .authenticationProvider(tokenCredentialAuthProvider)
    .buildClient();

final User me = graphClient.me().buildRequest().get();
```

# [Android](#tab/Android)

Not applicable.

# [Objective-C](#tab/Objective-C)

Not applicable.

# [PHP](#tab/PHP)

Not yet available. Please vote for or open a [Microsoft Graph feature request](https://techcommunity.microsoft.com/t5/microsoft-365-developer-platform/idb-p/Microsoft365DeveloperPlatform/label-name/Microsoft%20Graph) if this is important to you.

# [Ruby](#tab/Ruby)

Not yet available. Please vote for or open a [Microsoft Graph feature request](https://techcommunity.microsoft.com/t5/microsoft-365-developer-platform/idb-p/Microsoft365DeveloperPlatform/label-name/Microsoft%20Graph) if this is important to you.

---

## Integrated Windows provider

The integrated Windows flow provides a way for Windows computers to silently acquire an access token when they are domain joined. For details, see [Integrated Windows authentication](https://github.com/AzureAD/microsoft-authentication-library-for-dotnet/wiki/Integrated-Windows-Authentication).

# [C#](#tab/CS)

The `Azure.Identity` package does not currently support Windows integrated authentication. Instead create a custom authentication provider using MSAL.

```csharp
var scopes = new[] { "User.Read" };

// Multi-tenant apps can use "common",
// single-tenant apps must use the tenant ID from the Azure portal
var tenantId = "common";

// Value from app registration
var clientId = "YOUR_CLIENT_ID";

var pca = PublicClientApplicationBuilder
    .Create(clientId)
    .WithTenantId(tenantId)
    .Build();

// DelegateAuthenticationProvider is a simple auth provider implementation
// that allows you to define an async function to retrieve a token
// Alternatively, you can create a class that implements IAuthenticationProvider
// for more complex scenarios
var authProvider = new DelegateAuthenticationProvider(async (request) => {
    // Use Microsoft.Identity.Client to retrieve token
    var result = await pca.AcquireTokenByIntegratedWindowsAuth(scopes).ExecuteAsync();

    request.Headers.Authorization =
        new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", result.AccessToken);
});

var graphClient = new GraphServiceClient(authProvider);
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

## Interactive provider

The interactive flow is used by mobile applications (Xamarin and UWP) and desktops applications to call Microsoft Graph in the name of a user. For details, see [Acquiring tokens interactively](https://github.com/AzureAD/microsoft-authentication-library-for-dotnet/wiki/Acquiring-tokens-interactively).

# [C#](#tab/CS)

```csharp
var scopes = new[] { "User.Read" };

// Multi-tenant apps can use "common",
// single-tenant apps must use the tenant ID from the Azure portal
var tenantId = "common";

// Value from app registration
var clientId = "YOUR_CLIENT_ID";

var options = new InteractiveBrowserCredentialOptions
{
    TenantId = tenantId,
    ClientId = clientId,
    AuthorityHost = AzureAuthorityHosts.AzurePublicCloud,
    // MUST be http://localhost or http://localhost:PORT
    // See https://github.com/AzureAD/microsoft-authentication-library-for-dotnet/wiki/System-Browser-on-.Net-Core
    RedirectUri = new Uri("http://localhost"),
};

// https://docs.microsoft.com/dotnet/api/azure.identity.interactivebrowsercredential
var interactiveCredential = new InteractiveBrowserCredential(options);

var graphClient = new GraphServiceClient(interactiveCredential, scopes);
```

# [Javascript](#tab/Javascript)

Not yet available. Please vote for or open a [Microsoft Graph feature request](https://techcommunity.microsoft.com/t5/microsoft-365-developer-platform/idb-p/Microsoft365DeveloperPlatform/label-name/Microsoft%20Graph) if this is important to you.

# [Java](#tab/Java)

```java
final InteractiveBrowserCredential interactiveBrowserCredential = new InteractiveBrowserCredentialBuilder()
                .clientId(clientId)
                .redirectUrl("http://localhost:8765")
                .build();
final TokenCredentialAuthProvider tokenCredentialAuthProvider = new TokenCredentialAuthProvider(scopes, interactiveBrowserCredential);

final GraphServiceClient graphClient =
  GraphServiceClient
    .builder()
    .authenticationProvider(tokenCredentialAuthProvider)
    .buildClient();

final User me = graphClient.me().buildRequest().get();
```

# [Android](#tab/Android)

```java
final InteractiveBrowserCredential interactiveBrowserCredential = new InteractiveBrowserCredentialBuilder()
                .clientId(clientId)
                .redirectUrl("http://localhost:8765")
                .build();
final TokenCredentialAuthProvider tokenCredentialAuthProvider = new TokenCredentialAuthProvider(scopes, interactiveBrowserCredential);

final GraphServiceClient graphClient =
  GraphServiceClient
    .builder()
    .authenticationProvider(tokenCredentialAuthProvider)
    .buildClient();

final User me = graphClient.me().buildRequest().get();
```

# [Objective-C](#tab/Objective-C)

```objc
NSError *error = nil;
MSALPublicClientApplication *publicClientApplication = [[MSALPublicClientApplication alloc] initWithClientId:@"INSERT-CLIENT-APP-ID"
error:&error];

MSALAuthenticationProviderOptions *authProviderOptions= [[MSALAuthenticationProviderOptions alloc] initWithScopes:<array-of-scopes-for-which-you-need-access-token>];

 MSALAuthenticationProvider *authenticationProvider = [[MSALAuthenticationProvider alloc] initWithPublicClientApplication:publicClientApplication
 andOptions:authProviderOptions];
```

# [PHP](#tab/PHP)

Not applicable.

# [Ruby](#tab/Ruby)

Not applicable.

---

## Username/password provider

The username/password provider allows an application to sign in a user by using their username and password. Use this flow only when you cannot use any of the other OAuth flows. For more information, see [Microsoft identity platform and the OAuth 2.0 resource owner password credential](/azure/active-directory/develop/v2-oauth-ropc)

# [C#](#tab/CS)

```csharp
var scopes = new[] { "User.Read" };

// Multi-tenant apps can use "common",
// single-tenant apps must use the tenant ID from the Azure portal
var tenantId = "common";

// Value from app registration
var clientId = "YOUR_CLIENT_ID";

var options = new TokenCredentialOptions
{
    AuthorityHost = AzureAuthorityHosts.AzurePublicCloud
};

var userName = "adelev@contoso.com";
var password = "P@ssword1!";

var userNamePasswordCredential = new UsernamePasswordCredential(
    userName, password, tenantId, clientId, options);

var graphClient = new GraphServiceClient(userNamePasswordCredential, scopes);
```

# [Javascript](#tab/Javascript)

Not yet available. Please vote for or open a [Microsoft Graph feature request](https://techcommunity.microsoft.com/t5/microsoft-365-developer-platform/idb-p/Microsoft365DeveloperPlatform/label-name/Microsoft%20Graph) if this is important to you.

# [Java](#tab/Java)

```java
final UsernamePasswordCredential usernamePasswordCredential = new UsernamePasswordCredentialBuilder()
        .clientId(clientId)
        .username(username)
        .password(password)
        .build();

final TokenCredentialAuthProvider tokenCredentialAuthProvider = new TokenCredentialAuthProvider(scopes, usernamePasswordCredential);

final GraphServiceClient graphClient =
  GraphServiceClient
    .builder()
    .authenticationProvider(tokenCredentialAuthProvider)
    .buildClient();

final User me = graphClient.me().buildRequest().get();
```

# [Android](#tab/Android)

Not applicable.

# [Objective-C](#tab/Objective-C)

Not applicable.

# [PHP](#tab/PHP)

Not yet available. Please vote for or open a [Microsoft Graph feature request](https://techcommunity.microsoft.com/t5/microsoft-365-developer-platform/idb-p/Microsoft365DeveloperPlatform/label-name/Microsoft%20Graph) if this is important to you.

# [Ruby](#tab/Ruby)

Not yet available. Please vote for or open a [Microsoft Graph feature request](https://techcommunity.microsoft.com/t5/microsoft-365-developer-platform/idb-p/Microsoft365DeveloperPlatform/label-name/Microsoft%20Graph) if this is important to you.

---

## Next steps

* For code samples that show you how to use the Microsoft identity platform to secure different application types, see [Microsoft identity platform code samples (v2.0 endpoint)](/azure/active-directory/develop/sample-v2-code).
* Authentication providers require an client ID. You'll want to [register your application](https://portal.azure.com/) after you set up your authentication provider.
* Let us know if a required OAuth flow isn't currently supported by voting for or opening a [Microsoft Graph feature request](https://techcommunity.microsoft.com/t5/microsoft-365-developer-platform/idb-p/Microsoft365DeveloperPlatform/label-name/Microsoft%20Graph).
