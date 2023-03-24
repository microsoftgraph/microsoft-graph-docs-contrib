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

```csharp
// using Azure.Identity;
// https://learn.microsoft.com/dotnet/api/azure.identity.interactivebrowsercredential
var interactiveCredential = new InteractiveBrowserCredential(...);

var authProvider = new AzureIdentityAuthenticationProvider(tokenCredential, scopes: scopes);

var handlers = GraphClientFactory.CreateDefaultHandlers();

// Remove a default handler
var compressionHandler =
    handlers.Where(h => h is CompressionHandler).FirstOrDefault();
handlers.Remove(compressionHandler);

// Add a new one
// ChaosHandler simulates random server failures
handlers.Add(new ChaosHandler());

var httpClient = GraphClientFactory.Create(handlers);

var customGraphClient = new GraphServiceClient(httpClient, authProvider);

var messages = await graphClient.Me.Messages
        .GetAsync(requestConfiguration => 
        {
            requestConfiguration.QueryParameters.Top = 100;
            requestConfiguration.QueryParameters.Select = new string[] { "subject" };
        });
```

## [TypeScript](#tab/typeScript)

```typescript
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

// Create an authentication handler that uses custom auth provider
const authHandler = new MicrosoftGraph.AuthenticationHandler(authProvider);

// Create a custom logging handler
const loggingHandler = new CustomLoggingHandler();

// Create a standard HTTP message handler
const httpHandler = new MicrosoftGraph.HTTPMessageHandler();

// Use setNext to chain handlers together
// auth -> logging -> http
authHandler.setNext(loggingHandler);
loggingHandler.setNext(httpHandler);

// Pass the first middleware in the chain in the middleWare property
const client = MicrosoftGraph.Client.initWithMiddleware({
  defaultVersion: 'v1.0',
  debugLogging: true,
  middleware: authHandler,
});

const response: PageCollection = await client
  .api('/me/messages?$top=10&$select=sender,subject')
  .get();
```

### CustomLoggingHandler.ts

```typescript
import { Context, Middleware } from "@microsoft/microsoft-graph-client";

export default class CustomLoggingHandler implements Middleware {
  private nextMiddleware: any = null;

  execute = async (context: Context): Promise<void> => {
    console.log(`Logging request: ${context.request.toString()}`);
    return await this.nextMiddleware.execute(context);
  }
  setNext = (middleware: Middleware): void => {
    this.nextMiddleware = middleware;
  }
}
```

## [Java](#tab/java)

```java
import com.azure.identity.InteractiveBrowserCredential;
import com.azure.identity.InteractiveBrowserCredentialBuilder;
import com.microsoft.graph.authentication.TokenCredentialAuthProvider;
import com.microsoft.graph.httpcore.HttpClients;

import okhttp3.OkHttpClient;

final List<String> scopes = Arrays.asList("User.Read");

final InteractiveBrowserCredential credential =
    new InteractiveBrowserCredentialBuilder()
        .clientId("clientId")
        .redirectUrl("redirectUrl")
        .build();

final TokenCredentialAuthProvider authProvider =
    new TokenCredentialAuthProvider(scopes, credential);
// you can configure any OkHttpClient option and add interceptors
// Note: com.microsoft.graph:microsoft-graph:3.0 or above is required
// for a complete description of available configuration options https://square.github.io/okhttp/4.x/okhttp/okhttp3/-ok-http-client/-builder/
final OkHttpClient httpClient = HttpClients.createDefault(authProvider)
    .newBuilder()
    .followSslRedirects(false) // sample configuration to apply to client
    .build();

final GraphServiceClient graphServiceClient = GraphServiceClient
    .builder()
    .httpClient(httpClient)
    .buildClient();
```

## [Go](#tab/Go)

[!INCLUDE [go-sdk-preview](../../includes/go-sdk-preview.md)]

```go
import (
    a "github.com/microsoftgraph/msgraph-sdk-go-core/authentication"
    khttp "github.com/microsoft/kiota-http-go"
    msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
    core "github.com/microsoftgraph/msgraph-sdk-go-core"
)

// Auth provider
auth, err := a.NewAzureIdentityAuthenticationProviderWithScopes(...)

// Get default middleware from SDK
defaultMiddleware := core.GetDefaultMiddlewaresWithOptions(msgraphsdk.GetDefaultClientOptions())

// Get instance of custom middleware
// Implement a custom middleware by implementing the Middleware interface
// https://github.com/microsoft/kiota-http-go/blob/main/middleware.go
allMiddleware := append(defaultMiddleware, mycustom.NewCustomHandler())

// Create an HTTP client with the middleware
httpClient := khttp.GetDefaultClient(allMiddleware...)

// Create the adapter
// Passing nil values causes the adapter to use default implementations
adapter, err :=
    msgraphsdk.NewGraphRequestAdapterWithParseNodeFactoryAndSerializationWriterFactoryAndHttpClient(
        auth, nil, nil, httpClient)

client := msgraphsdk.NewGraphServiceClient(adapter)
```

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

```csharp
// URI to proxy
var proxyAddress = "http://localhost:8888";

// Create a new System.Net.Http.HttpClientHandler with the proxy
var handler = new HttpClientHandler
{
    // Create a new System.Net.WebProxy
    // See WebProxy documentation for scenarios requiring
    // authentication to the proxy
    Proxy = new WebProxy(new Uri(proxyAddress))
};

// Create an options object for the credential being used
// For example, here we're using a ClientSecretCredential so
// we create a ClientSecretCredentialOptions object
var options = new ClientSecretCredentialOptions
{
    // Create a new Azure.Core.HttpClientTransport
    Transport = new HttpClientTransport(handler)
};

var credential = new ClientSecretCredential(
    "YOUR_TENANT_ID",
    "YOUR_CLIENT_ID",
    "YOUR_CLIENT_SECRET",
    options
);

var scopes = new[] { "https://graph.microsoft.com/.default" };

// This example works with Microsoft.Graph 5+
var httpClient = GraphClientFactory.Create(proxy: new WebProxy(new Uri(proxyAddress)));

var graphClient = new GraphServiceClient(httpClient, new AzureIdentityAuthenticationProvider(credential, scopes: scopes));
```

## [TypeScript](#tab/typeScript)

```typescript
// Create a credential from @azure/identity package
const credential = new ClientSecretCredential(
  'YOUR_TENANT_ID',
  'YOUR_CLIENT_ID',
  'YOUR_CLIENT_SECRET',
  {
    proxyOptions: {
      host: 'localhost',
      port: 8888,
      // If proxy requires authentication
      //username: '',
      //password: ''
    },
  }
);

// Create a Graph token credential provider
const tokenAuthProvider = new TokenCredentialAuthenticationProvider(
  credential,
  {
    scopes: [ 'https://graph.microsoft.com/.default' ]
  });

const client = MicrosoftGraph.Client.initWithMiddleware({
  authProvider: tokenAuthProvider,
  // Configure proxy in fetchOptions
  fetchOptions: {
    agent: new HttpsProxyAgent('http://localhost:8888')
  }
});
```

## [Java](#tab/java)

```java
final int proxyPort = 8080;
final InetSocketAddress proxyInetAddress = new InetSocketAddress("proxy.ip.or.hostname", proxyPort);

// The section below configures the proxy for the Azure Identity client
// and is only needed if you rely on Azure Identity for authentication
final ProxyOptions pOptions = new ProxyOptions(ProxyOptions.Type.HTTP, proxyInetAddress);
pOptions.setCredentials("username", "password");
final HttpClientOptions clientOptions = new HttpClientOptions();
clientOptions.setProxyOptions(pOptions);
final HttpClient azHttpClient = HttpClient.createDefault(clientOptions);

// Or any other credential the application is using
final ClientSecretCredential clientSecretCredential =
    new ClientSecretCredentialBuilder()
        .clientId(CLIENT_ID)
        .clientSecret(CLIENT_SECRET)
        .tenantId(TENANT_GUID)
        // don't forget that addition to use the configured client
        .httpClient(azHttpClient)
        .build();
final TokenCredentialAuthProvider authenticationProvider =
    new TokenCredentialAuthProvider(Arrays.asList(SCOPES), clientSecretCredential);

// The section below configures the proxy for the Microsoft Graph SDK client
final Proxy proxy = new Proxy(Proxy.Type.HTTP, proxyInetAddress);

// This block is only needed if the proxy requires authentication
final Authenticator proxyAuthenticator = new Authenticator() {
  @Override
  public Request authenticate(Route route, Response response) throws IOException {
    String credential = Credentials.basic("username", "password");
    return response.request().newBuilder()
        .header("Proxy-Authorization", credential)
        .build();
  }
};

final OkHttpClient graphHttpClient =
    HttpClients.createDefault(authenticationProvider)
        .newBuilder()
        .proxy(proxy)
        .proxyAuthenticator(proxyAuthenticator)
        .build();

final GraphServiceClient graphServiceClient =
    GraphServiceClient
        .builder()
        .httpClient(graphHttpClient)
        .buildClient();

```

> [!NOTE]
> For more information about Azure Identity proxy configuration, see [ProxyOptions](/java/api/com.azure.core.http.proxyoptions.proxyoptions).

## [Go](#tab/Go)

[!INCLUDE [go-sdk-preview](../../includes/go-sdk-preview.md)]

```go
import (
   a "github.com/microsoft/kiota-authentication-azure-go"
   khttp "github.com/microsoft/kiota-http-go"
   msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
   core "github.com/microsoftgraph/msgraph-sdk-go-core"
)

// Auth provider
auth, err := a.NewAzureIdentityAuthenticationProviderWithScopes(...)

// Get default middleware from SDK
defaultMiddleware := core.GetDefaultMiddlewaresWithOptions(msgraphsdk.GetDefaultClientOptions())

// Create an HTTP client with the middleware
httpClient := core.GetClientWithAuthenticatedProxySettings("http://proxy-url", "username", "password", defaultMiddleware...)

// A client that does not require user and password auth can use
httpClient := core.GetClientWithProxySettings("http://proxy-url", defaultMiddleware...)

// Create the adapter
// Passing nil values causes the adapter to use default implementations
adapter, err :=
    msgraphsdk.NewGraphRequestAdapterWithParseNodeFactoryAndSerializationWriterFactoryAndHttpClient(
        auth, nil, nil, httpClient)

client := msgraphsdk.NewGraphServiceClient(adapter)
```

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
