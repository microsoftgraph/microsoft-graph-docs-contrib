---
title: "Customize the Microsoft Graph SDK service client"
description: "Provides instructions on how to change the default behavior of the Microsoft Graph SDK service client."
ms.localizationpriority: medium
author: DarrelMiller
---

# Customize the Microsoft Graph SDK service client

The Microsoft Graph SDK client configures a default set of middleware that allows the SDK to communicate with the Microsoft Graph endpoints. This customizable default set allows you to change the client's behavior. For example, you can insert customized logging or a test handler to simulate specific scenarios. You can add and remove middleware components. It's important to note that the order in which middleware components run is significant.

<!-- markdownlint-disable MD051 -->
## [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CustomClients.cs" id="ChaosHandlerSnippet":::

## [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/custom_clients.go" id="ImportSnippet":::

:::code language="go" source="./snippets/go/src/snippets/custom_clients.go" id="ChaosHandlerSnippet":::

## [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/CustomClients.java" id="ChaosHandlerSnippet":::

## [PHP](#tab/PHP)

:::code language="php" source="./snippets/php/snippets/CustomClients.php" id="ChaosHandlerSnippet":::

## [Python](#tab/python)

:::code language="python" source="./snippets/python/src/snippets/custom_clients.py" id="CustomMiddlewareSnippet":::

## Custom middleware

:::code language="python" source="./snippets/python/src/snippets/middleware/custom_middleware.py" id="CustomMiddlewareSnippet":::

## [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/customClients.ts" id="ChaosHandlerSnippet":::

---

## Configuring the HTTP proxy for the client

Some environments require client applications to use an HTTP proxy before accessing the public internet. This section shows how to configure the proxy for the Microsoft Graph SDKs.

<!-- markdownlint-disable MD024 -->
## [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CustomClients.cs" id="ProxySnippet":::

## [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/custom_clients.go" id="ImportSnippet":::

:::code language="go" source="./snippets/go/src/snippets/custom_clients.go" id="ProxySnippet":::

## [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/CustomClients.java" id="ProxySnippet":::

## [PHP](#tab/PHP)

:::code language="php" source="./snippets/php/snippets/CustomClients.php" id="ProxySnippet":::

## [Python](#tab/python)

:::code language="python" source="./snippets/python/src/snippets/custom_clients.py" id="ProxySnippet":::

## [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/customClients.ts" id="ProxySnippet":::

---
