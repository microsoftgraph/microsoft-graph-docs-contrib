---
title: "Use the SDK with the beta API"
description: "Describes how use the Microsoft Graph SDK with the beta version of the API."
localization_priority: Normal
author: jasonjoh
---

# Use the SDK with the beta API

The Microsoft Graph SDKs use the [v1.0](/graph/api/overview?view=graph-rest-1.0) Graph endpoint by default. The SDKs can be used with the [beta](/graph/api/overview?view=graph-rest-beta) endpoint for non-production applications. The method for accessing the beta endpoint depends on which SDK you are using.

[!INCLUDE [beta-disclaimer](../../api-reference/includes/beta-disclaimer.md)]

# [C#](#tab/CS)

In order to call the beta API, you must install the [Microsoft.Graph.Beta](https://www.nuget.org/packages/Microsoft.Graph.Beta) package. Usage is the same as the `Microsoft.Graph` package.

```csharp
using Microsoft.Graph.Beta;

// Create a new instance of GraphServiceClient.
GraphServiceClient graphClient = new GraphServiceClient(...);
```

## [TypeScript](#tab/typeScript)

The [Microsoft Graph JavaScript Client Library](https://github.com/microsoftgraph/msgraph-sdk-javascript) can call the beta API in one of two ways.

- You can set the version on the `MicrosoftGraph.Client` when you create it. All requests made by the client will go to the specified version.

    ```typescript
    const clientOptions: ClientOptions = {
      defaultVersion: 'beta',
      ...
    };

    // Initialize Graph client
    const client = MicrosoftGraph.Client.initWithMiddleware(clientOptions);
    ```

- You can set the version on a specific request by using the `version` function on the `GraphRequest` object.

    ```typescript
    const user = await client
      .api('/me')
      .version('beta')
      .get();
    ```

# [Java](#tab/Java)

In order to call the beta API, you must install the [Microsoft Graph Beta Java SDK](https://github.com/microsoftgraph/msgraph-beta-sdk-java). Usage is the same as the non-beta SDK.

# [Objective-C](#tab/Objective-C)

TODO

---
