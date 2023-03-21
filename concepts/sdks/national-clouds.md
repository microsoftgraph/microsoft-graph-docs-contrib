---
title: "Access national cloud deployments with the Microsoft Graph SDKs"
description: "Provides instructions for accessing national cloud deployments using the Microsoft Graph SDKs."
ms.localizationpriority: medium
author: jasonjoh
---

<!-- markdownlint-disable MD051 -->

# Access national cloud deployments with the Microsoft Graph SDKs

By default, the Microsoft Graph SDKs are configured to access data in the Microsoft Graph global service, using the `https://graph.microsoft.com` root URL to access the Microsoft Graph REST API. Developers can override this configuration to connect to [Microsoft Graph national cloud deployments](../deployments.md).

## Prerequisites

You will need the following information to configure a Microsoft Graph SDK to connect to a national cloud deployment.

- Application registration details, such as client ID, tenant ID, and client secret or certificate. The application registration MUST be created in the Azure portal that corresponds to the national cloud deployment. See [App registration and token service root endpoints](../deployments.md#app-registration-and-token-service-root-endpoints) for details.
- The token endpoint for the national cloud deployment.
- The Microsoft Graph service root endpoint for the national cloud deployment. See [Microsoft Graph and Graph Explorer service root endpoints](../deployments.md#microsoft-graph-and-graph-explorer-service-root-endpoints) for a list of endpoints.

## Configure the SDK

In order to connect to a national cloud deployment, you must configure your [authentication provider](choose-authentication-providers.md) to connect to the correct token service endpoint. Then you must configure the SDK client to connect to the correct Microsoft Graph service root endpoint.

### Permission scopes

Any permission scope value (including the `.default` scope) that contains the Microsoft Graph domain MUST use the domain of the Microsoft Graph service root endpoint for the national cloud deployment. The shortened permission scope names, such as `User.Read` or `Mail.Send`, are also valid.

- For [incremental or dynamic consent](/azure/active-directory/develop/consent-types-developer#incremental-and-dynamic-user-consent), `User.Read` and `https://graph.microsoft.us/User.Read` are equivalent for the US Government L4 national cloud.
- For [statically defined permissions](/azure/active-directory/develop/consent-types-developer#request-the-permissions-in-the-app-registration-portal), or if you are using [client credentials flow](/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow) for app-only permissions, `https://graph.microsoft.us/.default` is the correct `.default` scope value.

## Examples

The following example configures an [Interactive authentication provider](choose-authentication-providers.md#interactive-provider) with the Microsoft Graph SDK to connect to the Microsoft Graph for US Government L4 national cloud.

### [C#](#tab/csharp)

```csharp
using Azure.Identity;
using Microsoft.Graph;
using Microsoft.Graph.Authentication;

// Create the InteractiveBrowserCredential using details
// from app registered in the Azure AD for US Government portal
var credential = new InteractiveBrowserCredential(
    "YOUR_TENANT_ID",
    "YOUR_CLIENT_ID",
    new InteractiveBrowserCredentialOptions
    {
        // https://login.microsoftonline.us
        AuthorityHost = AzureAuthorityHosts.AzureGovernment,
        RedirectUri = new Uri("YOUR_REDIRECT_URI")
    });

// Create the authentication provider
var authProvider = new AzureIdentityAuthenticationProvider(
    credential,
    new[] { "https://graph.microsoft.us/.default" });

// Create the Microsoft Graph client object using
// the Microsoft Graph for US Government L4 endpoint
// NOTE: The API version must be included in the URL
var graphClient = new GraphServiceClient(
    authProvider, "https://graph.microsoft.us/v1.0");
```

### [TypeScript](#tab/typescript)

```typescript
import 'isomorphic-fetch';
import { AzureAuthorityHosts, InteractiveBrowserCredential } from '@azure/identity';
import { Client } from '@microsoft/microsoft-graph-client';
import { TokenCredentialAuthenticationProvider } from
  '@microsoft/microsoft-graph-client/authProviders/azureTokenCredentials';

// Create the InteractiveBrowserCredential using details
// from app registered in the Azure AD for US Government portal
const credential = new InteractiveBrowserCredential({
  clientId: 'YOUR_CLIENT_ID',
  tenantId: 'YOUR_TENANT_ID',
  // https://login.microsoftonline.us
  authorityHost: AzureAuthorityHosts.AzureGovernment,
  redirectUri: 'YOUR_REDIRECT_URI'
});

// Create the authentication provider
const authenticationProvider = new TokenCredentialAuthenticationProvider(credential, {
  scopes: ['https://graph.microsoft.us/.default']
});

// Create the Microsoft Graph client object using
// the Microsoft Graph for US Government L4 endpoint
// NOTE: Do not include the version in the baseUrl
const graphClient = Client.initWithMiddleware({
  authProvider: authenticationProvider,
  baseUrl: 'https://graph.microsoft.us'
});
```

### [PowerShell](#tab/powershell)

```powershell
Connect-MgGraph -Environment USGov -ClientId 'YOUR_CLIENT_ID' `
  -TenantId 'YOUR_TENANT_ID' -Scopes 'https://graph.microsoft.us/.default'
```

### [Java](#tab/java)

```java
import java.util.Arrays;
import java.util.List;

import com.azure.identity.AzureAuthorityHosts;
import com.azure.identity.InteractiveBrowserCredential;
import com.azure.identity.InteractiveBrowserCredentialBuilder;
import com.microsoft.graph.authentication.TokenCredentialAuthProvider;
import com.microsoft.graph.requests.GraphServiceClient;

// Create the InteractiveBrowserCredential using details
// from app registered in the Azure AD for US Government portal
final InteractiveBrowserCredential credential =
    new InteractiveBrowserCredentialBuilder()
        .clientId("YOUR_CLIENT_ID")
        .tenantId("YOUR_TENANT_ID")
        // https://login.microsoftonline.us
        .authorityHost(AzureAuthorityHosts.AZURE_GOVERNMENT)
        .redirectUrl("YOUR_REDIRECT_URI")
        .build();

// Create the authentication provider
final List<String> scopes = Arrays.asList("https://graph.microsoft.us/.default");
final TokenCredentialAuthProvider authProvider =
    new TokenCredentialAuthProvider(scopes, credential);

// Create the Microsoft Graph client object
final GraphServiceClient<Request> graphClient = GraphServiceClient.builder()
    .authenticationProvider(authProvider)
    .buildClient();

// Set the service root to the
// Microsoft Graph for US Government L4 endpoint
// NOTE: The API version must be included in the URL
graphClient.setServiceRoot("https://graph.microsoft.us/v1.0");
```

### [Go](#tab/go)

```go
import (
    "context"

    "github.com/Azure/azure-sdk-for-go/sdk/azcore/cloud"
    "github.com/Azure/azure-sdk-for-go/sdk/azcore/policy"
    "github.com/Azure/azure-sdk-for-go/sdk/azidentity"
    auth "github.com/microsoftgraph/msgraph-sdk-go-core/authentication"
    msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
)

// Create the InteractiveBrowserCredential using details
// from app registered in the Azure AD for US Government portal
credential, err := azidentity.NewInteractiveBrowserCredential(&azidentity.InteractiveBrowserCredentialOptions{
    ClientID: "YOUR_CLIENT_ID",
    TenantID: "YOUR_TENANT_ID",
    ClientOptions: policy.ClientOptions{
        // https://login.microsoftonline.us
        Cloud: cloud.AzureGovernment,
    },
    RedirectURL: "YOUR_REDIRECT_URL",
})
if err != nil {
    return err
}

// Create the authentication provider
authProvider, err := auth.NewAzureIdentityAuthenticationProviderWithScopes(credential,
    []string{"https://graph.microsoft.us/.default"})
if err != nil {
    return err
}

// Create a request adapter using the auth provider
adapter, err := msgraphsdk.NewGraphRequestAdapter(authProvider)
if err != nil {
    return err
}

// Set the service root to the
// Microsoft Graph for US Government L4 endpoint
// NOTE: The API version must be included in the URL
adapter.SetBaseUrl("https://graph.microsoft.us/v1.0")

// Create a Graph client using request adapter
graphClient := msgraphsdk.NewGraphServiceClient(adapter)
```

---
