---
title: "Customize the Microsoft Graph SDK service client"
description: "Provides instructions on how to change the default behavior of the Microsoft Graph SDK service client."
ms.localizationpriority: medium
author: DarrelMiller
---

# Customize the Microsoft Graph SDK service client

The Microsoft Graph SDK client configures a default set of middleware that allows the SDK to communicate with the Microsoft Graph endpoints. This default set is customizable, allowing you to change the behavior of the client. For example, you can insert customized logging, or add a test handler to simulate specific scenarios. You can add and remove middleware components. It is important to note that the order in which middleware components run is significant.

<!-- markdownlint-disable MD051 -->
## [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CustomClients.cs" id="ChaosHandlerSnippet":::

## [TypeScript](#tab/typeScript)

:::code language="typescript" source="./snippets/typescript/src/snippets/customClients.ts" id="ChaosHandlerSnippet":::

## [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/CustomClients.java" id="ChaosHandlerSnippet":::

## [Go](#tab/Go)

:::code language="go" source="./snippets/go/src/snippets/custom_clients.go" id="ImportSnippet":::

:::code language="go" source="./snippets/go/src/snippets/custom_clients.go" id="ChaosHandlerSnippet":::

## [Python](#tab/Python)

[!INCLUDE [python-sdk-preview](../../includes/python-sdk-preview.md)]

```python
# using Azure.Identity
# https://learn.microsoft.com/en-us/python/api/azure-identity/azure.identity.interactivebrowsercredential
interactive_credential = InteractiveBrowserCredential()
scopes = ['https://graph.microsoft.com/.default']
authProvider = AzureIdentityAuthenticationProvider(interactive_credential, scopes=scopes)

# Get default middleware
middleware = GraphClientFactory.get_default_middleware(options=None)

# Remove a default handler
retry_handler = [handler for handler in middleware if isinstance(handler, RetryHandler)][0]
middleware.remove(retry_handler)

# Add custom middleware
# Implement a custom middleware by extending the BaseMiddleware class
# https://github.com/microsoft/kiota-http-go/blob/main/kiota_http/middleware/middleware.py
middleware.append(MyCustomMiddleware())

# Create an HTTP client with the middleware
http_client = GraphClientFactory().create_with_custom_middleware(middleware)

# Create a request adapter with the HTTP client
adapter = GraphRequestAdapter(auth_provider=authProvider, client=http_client)

# Create Graph client
client = GraphServiceClient(adapter)
```

---

## Configuring the HTTP proxy for the client

Some environments require client applications to use a HTTP proxy before they can access the public internet. This section shows how to configure the proxy for the Microsoft Graph SDKs.

<!-- markdownlint-disable MD024 -->
## [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CustomClients.cs" id="ProxySnippet":::

## [TypeScript](#tab/typeScript)

:::code language="typescript" source="./snippets/typescript/src/snippets/customClients.ts" id="ProxySnippet":::

## [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/CustomClients.java" id="ProxySnippet":::

## [Go](#tab/Go)

:::code language="go" source="./snippets/go/src/snippets/custom_clients.go" id="ImportSnippet":::

:::code language="go" source="./snippets/go/src/snippets/custom_clients.go" id="ProxySnippet":::

## [Python](#tab/Python)

[!INCLUDE [python-sdk-preview](../../includes/python-sdk-preview.md)]

```python
# using Azure.Identity
# https://learn.microsoft.com/en-us/python/api/azure-identity/azure.identity.interactivebrowsercredential
interactive_credential = InteractiveBrowserCredential()
scopes = ['https://graph.microsoft.com/.default']
authProvider = AzureIdentityAuthenticationProvider(interactive_credential, scopes=scopes)

# Proxy URLs
proxies = {
    'http://': 'http://proxy-url',
    'https://': 'http://proxy-url'
}

# Create a custom HTTP client with the proxies
http_client = AsyncClient(proxies=proxies)

# Apply Graph default middleware to HTTP client
http_client = GraphClientFactory.create_with_default_middleware(client=http_client)

# Create a request adapter with the HTTP client
adapter = GraphRequestAdapter(auth_provider=authProvider, client=http_client)

# Create Graph client
client = GraphServiceClient(adapter)
```

---
