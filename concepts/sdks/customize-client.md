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
We currently use [Guzzle](http://guzzlephp.org/) as our HTTP client. You can pass your custom-configured Guzzle client using:

```php
<?php
use Microsoft\Graph\Core\GraphClientFactory;
use Microsoft\Graph\GraphRequestAdapter;
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Core\Authentication\GraphPhpLeagueAuthenticationProvider;

$tokenRequestContext = new ClientCredentialContext(
    'tenantId',
    'clientId',
    'clientSecret'
);
$authProvider = new GraphPhpLeagueAuthenticationProvider($tokenRequestContext);
// Get default middleware stack from SDK
$handlerStack = GraphClientFactory::getDefaultHandlerStack();

// Add a custom handler or extra handlers not added by default
// Add Chaos handler to simulate random server failure responses
$handlerStack->push(KiotaMiddleware::chaos());

$httpClient = GraphClientFactory::createWithMiddleware($handlerStack);

$requestAdapter = new GraphRequestAdapter($authProvider, $httpClient);
$graphServiceClient = new GraphServiceClient($requestAdapter);

```

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

```php
<?php
use Microsoft\Graph\Core\GraphClientFactory;
use Microsoft\Graph\GraphRequestAdapter;

// Configure proxy URLs on the Guzzle client
$guzzleConfig = [
    'proxy' => [
        'http'  => 'http://proxy-url', // Use this proxy with "http"
        'https' => 'http://proxy-url', // Use this proxy with "https"
    ]
];

$httpClient = GraphClientFactory::createWithConfig($guzzleConfig);
$requestAdapter = new GraphRequestAdapter($authProvider, $httpClient);
$graphServiceClient = GraphServiceClient::createWithRequestAdapter($requestAdapter);

```

## [Python](#tab/python)

:::code language="python" source="./snippets/python/src/snippets/custom_clients.py" id="ProxySnippet":::

## [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/customClients.ts" id="ProxySnippet":::

---
