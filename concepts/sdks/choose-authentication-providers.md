---
title: "Choose a Microsoft Graph authentication provider"
description: "Learn how to choose scenario-specific authentication providers for your application."
ms.localizationpriority: medium
author: MichaelMainer
---

<!-- markdownlint-disable MD001 MD024 MD051 -->

# Choose a Microsoft Graph authentication provider based on scenario

Authentication providers implement the code required to acquire a token using the Microsoft Authentication Library (MSAL); handle a number of potential errors for cases like incremental consent, expired passwords, and conditional access; and then set the HTTP request authorization header. The following table lists the set of providers that match the scenarios for different [application types](/azure/active-directory/develop/v2-app-types).

| Scenario                                                                                               | Flow/Grant         | Audience               | Provider |
|--------------------------------------------------------------------------------------------------------|--------------------|------------------------|-----|
| [Single Page App](/azure/active-directory/develop/scenario-spa-acquire-token)                          | Authorization Code with PKCE | Delegated Consumer/Org | [Authorization code provider](#authorization-code-provider) |
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
> The following code snippets were written with the latest versions of their respective SDKs. If you encounter compiler errors with these snippets, make sure you have the latest versions. The authentication providers used are provided by the following Azure Identity libraries:
>
> - .NET developers need to add the [Azure.Identity](/dotnet/api/azure.identity) package.
> - TypeScript and JavaScript developers need to add the [@azure/identity](/javascript/api/@azure/identity) library.
> - Java and Android developers need to add the [azure-identity](/java/api/overview/azure/identity-readme) library.

## Authorization code provider

The authorization code flow enables native and web apps to securely obtain tokens in the name of the user. To learn more, see [Microsoft identity platform and OAuth 2.0 authorization code flow](/azure/active-directory/develop/v2-oauth2-auth-code-flow).

# [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CreateClients.cs" id="AuthorizationCodeSnippet":::

# [TypeScript](#tab/typescript)

### Using @azure/msal-browser for browser applications

:::code language="typescript" source="./snippets/typescript/src/snippets/createClients.ts" id="BrowserSnippet":::

### Using @azure/identity for server-side applications

:::code language="typescript" source="./snippets/typescript/src/snippets/createClients.ts" id="AuthorizationCodeSnippet":::

# [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/CreateClients.java" id="AuthorizationCodeSnippet":::

# [Go](#tab/go)

The [Azure Identity Client Module for Go](https://pkg.go.dev/github.com/Azure/azure-sdk-for-go/sdk/azidentity) does not support the authorization code flow.

# [Python](#tab/python)

[!INCLUDE [python-sdk-preview](../../includes/python-sdk-preview.md)]

You can choose from any of the synchronous classes listed [here](/python/api/azure-identity/azure.identity?view=azure-python&preserve-view=true) or they asynchronous class listed [here](/python/api/azure-identity/azure.identity.aio?view=azure-python&preserve-view=true). In the following example we are using [AuthorizationCodeCredential](/python/api/azure-identity/azure.identity.aio.authorizationcodecredential?view=azure-python&preserve-view=true).

```python
from azure.identity.aio import AuthorizationCodeCredential
from kiota_authentication_azure.azure_identity_authentication_provider import AzureIdentityAuthenticationProvider

credential=AuthorizationCodeCredential(
    tenant_id = 'TENANT_ID',
    client_id = 'CLIENT_ID',
    authorization_code = 'AUTH_CODE',
    redirect_uri = 'REDIRECT_URL')
auth_provider = AzureIdentityAuthenticationProvider(credential)
```

---

## Client credentials provider

The client credential flow enables service applications to run without user interaction. Access is based on the identity of the application. For more information, see [Microsoft identity platform and the OAuth 2.0 client credentials flow](/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow).

# [C#](#tab/csharp)

### Using a client certificate

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CreateClients.cs" id="ClientCertificateSnippet":::

### Using a client secret

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CreateClients.cs" id="ClientSecretSnippet":::

# [TypeScript](#tab/typescript)

### Using a client certificate

:::code language="typescript" source="./snippets/typescript/src/snippets/createClients.ts" id="ClientCertificateSnippet":::

### Using a client secret

:::code language="typescript" source="./snippets/typescript/src/snippets/createClients.ts" id="ClientSecretSnippet":::

# [Java](#tab/java)

### Using a client certificate

:::code language="java" source="./snippets/java/app/src/main/java/snippets/CreateClients.java" id="ClientCertificateSnippet":::

### Using a client secret

:::code language="java" source="./snippets/java/app/src/main/java/snippets/CreateClients.java" id="ClientSecretSnippet":::

# [Go](#tab/go)

### Using a client certificate

:::code language="go" source="./snippets/go/src/snippets/create_clients.go" id="ClientCertificateSnippet":::

### Using a client secret

:::code language="go" source="./snippets/go/src/snippets/create_clients.go" id="ClientSecretSnippet":::

# [Python](#tab/python)

[!INCLUDE [python-sdk-preview](../../includes/python-sdk-preview.md)]

You can choose from any of the synchronous classes listed [here](/python/api/azure-identity/azure.identity?view=azure-python&preserve-view=true) or they asynchronous class listed [here](/python/api/azure-identity/azure.identity.aio?view=azure-python&preserve-view=true). In the following example we are using [ClientSecretCredential](/python/api/azure-identity/azure.identity.aio.clientsecretcredential?view=azure-python&preserve-view=true).

```python
from azure.identity.aio import ClientSecretCredential
from kiota_authentication_azure.azure_identity_authentication_provider import AzureIdentityAuthenticationProvider

credential=ClientSecretCredential(
    tenant_id = 'TENANT_ID',
    client_id = 'CLIENT_ID',
    client_secret = 'CLIENT_SECRET')
auth_provider = AzureIdentityAuthenticationProvider(credential)
```

---

## On-behalf-of provider

The on-behalf-of flow is applicable when your application calls a service/web API which in turns calls the Microsoft Graph API. Learn more by reading [Microsoft identity platform and OAuth 2.0 On-Behalf-Of flow](/azure/active-directory/develop/v2-oauth2-on-behalf-of-flow)

# [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CreateClients.cs" id="OnBehalfOfSnippet":::

# [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/createClients.ts" id="OnBehalfOfSnippet":::

# [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/CreateClients.java" id="OnBehalfOfSnippet":::

# [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/create_clients.go" id="OnBehalfOfSnippet":::

# [Python](#tab/python)

[!INCLUDE [python-sdk-preview](../../includes/python-sdk-preview.md)]

For details on the library see [OnBehalfOfCredential Class](/python/api/azure-identity/azure.identity.aio.onbehalfofcredential?view=azure-python&preserve-view=true).

```python
from azure.identity.aio import OnBehalfOfCredential
from kiota_authentication_azure.azure_identity_authentication_provider import AzureIdentityAuthenticationProvider

credential=OnBehalfOfCredential(
    tenant_id = 'TENANT_ID',
    client_id = 'CLIENT_ID',
    client_secret = 'CLIENT_SECRET',
    user_assertion = 'USER_ASSERTION')
auth_provider = AzureIdentityAuthenticationProvider(credential)
```

---

## Implicit provider

Implicit Authentication flow is not recommended due to its [disadvantages](https://datatracker.ietf.org/doc/html/draft-ietf-oauth-browser-based-apps-04#section-9.8.6). Public clients such as native apps and single-page apps should now use the authorization code flow with the PKCE extension instead. [Reference](https://oauth.net/2/grant-types/implicit/).

## Device code provider

The device code flow enables sign in to devices by way of another device. For details, see [Microsoft identity platform and the OAuth 2.0 device code flow](/azure/active-directory/develop/v2-oauth2-device-code).

# [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CreateClients.cs" id="DeviceCodeSnippet":::

# [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/createClients.ts" id="DeviceCodeSnippet":::

# [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/CreateClients.java" id="DeviceCodeSnippet":::

# [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/create_clients.go" id="DeviceCodeSnippet":::

# [Python](#tab/python)

```python
from azure.identity import DeviceCodeCredential
from kiota_authentication_azure.azure_identity_authentication_provider import AzureIdentityAuthenticationProvider

# Create authentication provider object. Used to authenticate request
credential = DeviceCodeCredential(client_id = 'CLIENT_ID')
scopes = ['https://graph.microsoft.com/.default']
auth_provider = AzureIdentityAuthenticationProvider(credential, scopes=scopes)
```

---

## Integrated Windows provider

The integrated Windows flow provides a way for Windows computers to silently acquire an access token when they are domain joined. For details, see [Integrated Windows authentication](https://github.com/AzureAD/microsoft-authentication-library-for-dotnet/wiki/Integrated-Windows-Authentication).

# [C#](#tab/csharp)

The `Azure.Identity` package does not currently support Windows integrated authentication. Instead create a custom access token provider using MSAL.

### Access token provider

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/IntegratedWindowsTokenProvider.cs" id="IntegratedWindowsTokenProviderSnippet":::

### Create the client

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CreateClients.cs" id="IntegratedWindowsSnippet":::

# [TypeScript](#tab/typescript)

Not applicable.

# [Java](#tab/java)

Not applicable.

# [Go](#tab/go)

Not applicable.

# [Python](#tab/python)

Not applicable.

---

## Interactive provider

The interactive flow is used by mobile applications (Xamarin and UWP) and desktops applications to call Microsoft Graph in the name of a user. For details, see [Acquiring tokens interactively](https://github.com/AzureAD/microsoft-authentication-library-for-dotnet/wiki/Acquiring-tokens-interactively).

# [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CreateClients.cs" id="InteractiveSnippet":::

# [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/createClients.ts" id="InteractiveSnippet":::

# [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/CreateClients.java" id="InteractiveSnippet":::

# [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/create_clients.go" id="InteractiveSnippet":::

# [Python](#tab/python)

```python
from azure.identity import InteractiveBrowserCredential
from kiota_authentication_azure.azure_identity_authentication_provider import AzureIdentityAuthenticationProvider

# Create authentication provider object. Used to authenticate request
credential = InteractiveBrowserCredential()
scopes = ['https://graph.microsoft.com/.default']
auth_provider = AzureIdentityAuthenticationProvider(credential, scopes=scopes)
```

---

## Username/password provider

The username/password provider allows an application to sign in a user by using their username and password. Use this flow only when you cannot use any of the other OAuth flows. For more information, see [Microsoft identity platform and the OAuth 2.0 resource owner password credential](/azure/active-directory/develop/v2-oauth-ropc)

# [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CreateClients.cs" id="UserNamePasswordSnippet":::

# [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/createClients.ts" id="UserNamePasswordSnippet":::

# [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/CreateClients.java" id="UserNamePasswordSnippet":::

# [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/create_clients.go" id="UserNamePasswordSnippet":::

# [Python](#tab/python)

```python
from azure.identity import UsernamePasswordCredential
from kiota_authentication_azure.azure_identity_authentication_provider import AzureIdentityAuthenticationProvider

# Create authentication provider object. Used to authenticate request
credential = UsernamePasswordCredential(CLIENT_ID, USERNAME, PASSWORD)
scopes = ['https://graph.microsoft.com/.default']
auth_provider = AzureIdentityAuthenticationProvider(credential, scopes=scopes)
```

---

## Next steps

- For code samples that show you how to use the Microsoft identity platform to secure different application types, see [Microsoft identity platform code samples (v2.0 endpoint)](/azure/active-directory/develop/sample-v2-code).
- Authentication providers require an client ID. You'll want to [register your application](https://portal.azure.com/) after you set up your authentication provider.
- Let us know if a required OAuth flow isn't currently supported by voting for or opening a [Microsoft Graph feature request](https://aka.ms/graphrequests).
