---
title: "Create a Microsoft Graph client"
description: "Describes how to create a client to use to make calls to Microsoft Graph. Includes how to set up authentication and select a sovereign cloud."
ms.localizationpriority: medium
author: MichaelMainer
---

# Create a Microsoft Graph client

The Microsoft Graph client is designed to make it simple to make calls to Microsoft Graph. You can use a single client instance for the lifetime of the application. For information about how to add and install the Microsoft Graph client package into your project, see  [Install the SDK](sdk-installation.md).

The following code examples show how to create an instance of a Microsoft Graph client with an authentication provider in the supported languages. The authentication provider handles acquiring access tokens for the application. Many different authentication providers are available for each language and platform. The different authentication providers support different client scenarios. For details about which provider and options are appropriate for your scenario, see [Choose an Authentication Provider](choose-authentication-providers.md).

<!-- markdownlint-disable MD025 MD051 -->

# [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CreateClients.cs" id="DeviceCodeSnippet":::

# [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/create_clients.go" id="DeviceCodeSnippet":::

# [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/CreateClients.java" id="DeviceCodeSnippet":::

# [PHP](#tab/php)

:::code language="php" source="./snippets/php/snippets/CreateClients.php" id="AuthorizationCodeSnippet":::

# [Python](#tab/python)

:::code language="python" source="./snippets/python/src/snippets/create_clients.py" id="DeviceCodeSnippet":::

# [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/createClients.ts" id="DeviceCodeSnippet":::

---
