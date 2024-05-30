---
title: "Use the Microsoft Graph SDKs with the beta API"
description: "Describes how to use the Microsoft Graph SDKs with the beta version of the API."
ms.localizationpriority: medium
author: jasonjoh
---

<!-- markdownlint-disable MD051 -->

# Use the Microsoft Graph SDKs with the beta API

Many Microsoft Graph SDKs use the [v1.0](/graph/api/overview?view=graph-rest-1.0&preserve-view=false) Microsoft Graph endpoint by default. The SDKs can be used with the [beta](/graph/api/overview?view=graph-rest-beta&preserve-view=true) endpoint for nonproduction applications. The method for accessing the beta endpoint depends on your SDK.

[!INCLUDE [beta-disclaimer](../../api-reference/includes/beta-disclaimer.md)]

## [C#](#tab/csharp)

To call the API, you must install the [Microsoft.Graph.Beta](https://www.nuget.org/packages/Microsoft.Graph.Beta) package. Usage is the same as the `Microsoft.Graph` package.

```csharp
// Version 5.x
using Microsoft.Graph.Beta;
// Version 4.x and earlier
// using Microsoft.Graph;

// Create a new instance of GraphServiceClient.
GraphServiceClient graphClient = new GraphServiceClient(...);
```

## [Go](#tab/go)

To call the API, you must install the [Microsoft Graph Beta SDK for Go](https://github.com/microsoftgraph/msgraph-beta-sdk-go) package.

```go
import (
    graphbeta "github.com/microsoftgraph/msgraph-beta-sdk-go"
)
client := graphbeta.NewGraphServiceClientWithCredentials(credentials, scopes)
```

## [Java](#tab/java)

To call the API, you must install the [Microsoft Graph Beta Java SDK](https://github.com/microsoftgraph/msgraph-beta-sdk-java). Usage is the same as the nonbeta SDK.

```Java
GraphServiceClient graphClient = new GraphServiceClient(tokenCredential, scopes);
```

## [PHP](#tab/php)

The [Microsoft Graph Beta SDK for PHP](https://github.com/microsoftgraph/msgraph-beta-sdk-php) supports the beta endpoint and models. Use the SDK for the beta endpoint in the same way as the SDK for the v1 endpoint.

## [Python](#tab/python)

To use the [Microsoft Graph Beta SDK for Python](https://github.com/microsoftgraph/msgraph-beta-sdk-python), install the SDK for the beta endpoint with the following command:

```py
pip install msgraph-beta-sdk
```

Use the SDK for the beta endpoint in the same way as the SDK for the v1 endpoint.

## [TypeScript](#tab/typescript)

The [Microsoft Graph JavaScript Client Library](https://github.com/microsoftgraph/msgraph-sdk-javascript) can call the beta API in one of two ways.

- You can set the version on the `MicrosoftGraph.Client` when you create it. All requests made by the client go to the specified version.

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

---

## Related content

[SDKs in preview or GA status](sdks-overview.md#sdks-in-preview-or-ga-status).
