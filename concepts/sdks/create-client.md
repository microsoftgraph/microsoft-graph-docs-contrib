---
title: "Create a Microsoft Graph client"
description: "Describes how to create a client to use to make calls to Microsoft Graph. Includes how to set up authentication and select a sovereign cloud."
ms.localizationpriority: medium
author: MichaelMainer
ms.date: 11/07/2024
ms.topic: article
---

# Create a Microsoft Graph client

The Microsoft Graph client is designed to make it simple to make calls to Microsoft Graph. You can use a single client instance for the lifetime of the application. For information about how to add and install the Microsoft Graph client package into your project, see  [Install the SDK](sdk-installation.md).

The following code examples show how to create an instance of a Microsoft Graph client with an authentication provider in the supported languages. The authentication provider handles acquiring access tokens for the application. 

Many different authentication providers are available for each language and platform. The different authentication providers support different client scenarios. For details about which provider and options are appropriate for your scenario, see [Choose an Authentication Provider](choose-authentication-providers.md).

The client ID is the app registration ID that is generated when you [register your app in the Azure portal](/graph/auth-register-app-v2).

<!-- markdownlint-disable MD025 MD051 -->

# [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CreateClients.cs" id="DeviceCodeSnippet":::

> Include `using` statements for `Azure.Identity` and `Microsoft.Graph` to run this code.

# [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/create_clients.go" id="DeviceCodeSnippet":::

> Include `"github.com/Azure/azure-sdk-for-go/sdk/azidentity"` and `graph "github.com/microsoftgraph/msgraph-sdk-go"` in your import block to run this code.

# [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/CreateClients.java" id="DeviceCodeSnippet":::

> Include `import` statements for `com.azure.identity.DeviceCodeCredential`, `com.azure.identity.DeviceCodeCredentialBuilder`, and `com.microsoft.graph.serviceclient.GraphServiceClient` to run this code.

# [PHP](#tab/php)

:::code language="php" source="./snippets/php/snippets/CreateClients.php" id="AuthorizationCodeSnippet":::

> Include `use` statements for `Microsoft\Graph\GraphRequestAdapter`, `Microsoft\Graph\GraphServiceClient`, and `Microsoft\Kiota\Abstractions\Authentication\BaseBearerTokenAuthenticationProvider` to run this code.

# [Python](#tab/python)

:::code language="python" source="./snippets/python/src/snippets/create_clients.py" id="DeviceCodeSnippet":::

> Include `import` statements for `DeviceCodeCredential` from `azure.identity` and  `GraphServiceClient` from `msgraph.graph_service_client` to run this code.

# [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/createClients.ts" id="DeviceCodeSnippet":::

> Include `import` statements for `DeviceCodeCredential` from `@azure/identity`, `Client` from `@microsoft/microsoft-graph-client`, and `TokenCredentialAuthenticationProvider` from `@microsoft/microsoft-graph-client/authProviders/azureTokenCredentials` to run this code.

---
