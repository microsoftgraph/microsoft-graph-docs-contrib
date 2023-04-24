---
title: "Create a Microsoft Graph client"
description: "Describes how to create a client to use to make calls to Microsoft Graph. Includes how to set up authentication and select a sovereign cloud."
ms.localizationpriority: medium
author: MichaelMainer
---

# Create a Microsoft Graph client

The Microsoft Graph client is designed to make it simple to make calls to Microsoft Graph. You can use a single client instance for the lifetime of the application. For information about how to add and install the Microsoft Graph client package into your project, see  [Install the SDK](sdk-installation.md).

The following code examples show how to create an instance of a Microsoft Graph client with an authentication provider in the supported languages. The authentication provider will handle acquiring access tokens for the application. Many different authentication providers are available for each language and platform. The different authentication providers support different client scenarios. For details about which provider and options are appropriate for your scenario, see [Choose an Authentication Provider](choose-authentication-providers.md).

<!-- markdownlint-disable MD025 MD051 -->

# [C#](#tab/CS)

```csharp
var scopes = new[] { "User.Read" };

// Multi-tenant apps can use "common",
// single-tenant apps must use the tenant ID from the Azure portal
var tenantId = "common";

// Value from app registration
var clientId = "YOUR_CLIENT_ID";

// using Azure.Identity;
var options = new TokenCredentialOptions
{
    AuthorityHost = AzureAuthorityHosts.AzurePublicCloud
};

// Callback function that receives the user prompt
// Prompt contains the generated device code that you must
// enter during the auth process in the browser
Func<DeviceCodeInfo, CancellationToken, Task> callback = (code, cancellation) => {
    Console.WriteLine(code.Message);
    return Task.FromResult(0);
};

// https://learn.microsoft.com/dotnet/api/azure.identity.devicecodecredential
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
final ClientSecretCredential clientSecretCredential = new ClientSecretCredentialBuilder()
        .clientId(CLIENT_ID)
        .clientSecret(CLIENT_SECRET)
        .tenantId(TENANT_GUID)
        .build();

final TokenCredentialAuthProvider tokenCredAuthProvider =
        new TokenCredentialAuthProvider(SCOPES, clientSecretCredential);

final GraphServiceClient graphClient = GraphServiceClient
        .builder()
        .authenticationProvider(tokenCredAuthProvider)
        .buildClient();
```

# [Android](#tab/Android)

```java
final InteractiveBrowserCredential interactiveBrowserCredential = new InteractiveBrowserCredentialBuilder()
        .clientId(CLIENT_ID)
        .redirectUrl("http://localhost:8765")
        .build();

final TokenCredentialAuthProvider tokenCredAuthProvider =
        new TokenCredentialAuthProvider(SCOPES, interactiveBrowserCredential);

GraphServiceClient graphClient = GraphServiceClient
        .builder()
        .authenticationProvider(tokenCredAuthProvider)
        .buildClient();
```

# [PHP](#tab/PHP)

```php
<?php
use Microsoft\Graph\GraphRequestAdapter;
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Kiota\Abstractions\ApiException;
use Microsoft\Kiota\Authentication\GraphPhpLeagueAuthenticationProvider;
use Microsoft\Kiota\Authentication\Oauth\ClientCredentialContext;


// Create an auth provider object. We are using the ClientCredentialContext library in this example.
$tokenRequestContext = new ClientCredentialContext(
    'TENANT_ID',
    'CLIENT_ID',
    'CLIENT_SECRET'
);
$scopes = ['https://graph.microsoft.com/.default'];
$authProvider = new PhpLeagueAuthenticationProvider($tokenRequestContext, $scopes);

//Initialize the request adapter. This handles HTTP concerns
$requestAdapter = new GraphRequestAdapter($authProvider);

// Initialize the service client
$graphServiceClient = new GraphServiceClient($requestAdapter);

```

# [Go](#tab/Go)

[!INCLUDE [go-sdk-preview](../../includes/go-sdk-preview.md)]

```go
import (
    "context"
    "fmt"

    azidentity "github.com/Azure/azure-sdk-for-go/sdk/azidentity"
    msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
)

cred, err := azidentity.NewDeviceCodeCredential(&azidentity.DeviceCodeCredentialOptions{
    ClientID: "CLIENT_ID",
    UserPrompt: func(ctx context.Context, message azidentity.DeviceCodeMessage) error {
        fmt.Println(message.Message)
        return nil
    },
})

if err != nil {
    fmt.Printf("Error creating credentials: %v\n", err)
    return
}

client := msgraphsdk.NewGraphServiceClientWithCredentials(cred, []string{"User.Read"})
```

# [Python](#tab/Python)

[!INCLUDE [python-sdk-preview](../../includes/python-sdk-preview.md)]

```py
from azure.identity.aio import EnvironmentCredential
from kiota_authentication_azure.azure_identity_authentication_provider import AzureIdentityAuthenticationProvider
from msgraph import GraphRequestAdapter, GraphServiceClient

credential=EnvironmentCredential()
auth_provider = AzureIdentityAuthenticationProvider(credential)

adapter = GraphRequestAdapter(auth_provider)
client = GraphServiceClient(adapter)
```

---
