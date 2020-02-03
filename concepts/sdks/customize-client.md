---
title: "Customize your client"
description: "Provides instructions on how to change the default behavior of the Graph Service Client."
localization_priority: Normal
author: DarrelMiller
---

In order to change the default behavior of the service library client, you can create a customized native client library and pass it into the constructor of the service library client.  This provides the opportunity to configure the native library with the desired parameters and middleware pipeline.  Middleware components can be removed and added.  It is important to note the order of execution of middleware components is significant.

# [C#](#tab/CS)

```csharp
var handlers = GraphClientFactory.CreateDefaultHandlers(authProvider);
// Remove a default handler
var compressionHandler = handlers.Where(h => h is CompressionHandler).FirstOrDefault();
handlers.Remove(compressionHandler);
// Add a new one
handlers.Add(new ChaosHandler());

var httpClient = GraphClientFactory.Create(handlers);

var graphClient = new GraphServiceClient(httpClient);

IUserMessagesCollectionPage myMessages = await graphClient.Me.Messages.Request()
        .Top(100)
        .Select(m => m.Subject)
        .GetAsync();

```

# [TypeScript](#tab/TypeScript)

```typescript
const client = MicrosoftGraph.Client.init({
	defaultVersion: "v1.0",
	debugLogging: true,
	authProvider: (done) => {
		done(null, secrets.accessToken);
	},
});

// getting the current middleware chain (in this case, it's the default one)
let arr = client.getMiddlewareChain();

// Initialising the Middleware chain that we created
const chaosHandler = new chaosHandler();

// adding the dummy handler in the array of middlewares at 3rd position
arr.splice(2, 0, chaosHandler);

// setting the new middleware chain
client.setMiddlewareChain(arr);
```

---