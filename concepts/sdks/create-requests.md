---
title: "Make API calls using the Microsoft Graph SDKs"
description: "Provides instructions for creating Microsoft Graph HTTP requests using the SDKs."
ms.localizationpriority: medium
author: DarrelMiller
---

<!-- markdownlint-disable MD025 MD051 -->

# Make API calls using the Microsoft Graph SDKs

The Microsoft Graph SDK service libraries provide a client class that you can use as the starting point for creating all API requests. There are two styles of client class: one uses a fluent interface to create the request (for example, `client.Users["user-id"].Manager`) and the other accepts a path string (for example, `api("/users/user-id/manager")`). When you have a request object, you can specify a variety of options such as filtering and sorting, and finally, you select the type of operation you want to perform.

There is also the [Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/get-started), which has no client class at all. Instead, all requests are represented as PowerShell commands. For example, to get a user's manager, the command is `Get-MgUserManager`. For more information on finding commands for API calls, see [Navigating the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/navigating).

## Read information from Microsoft Graph

To read information from Microsoft Graph, you first need to create a request object and then run the `GET` method on the request.

# [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CreateRequests.cs" id="ReadRequestSnippet":::

# [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/create_requests.go" id="ReadRequestSnippet":::

# [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/CreateRequests.java" id="ReadRequestSnippet":::

# [PowerShell](#tab/powershell)

[!INCLUDE [sample-code](includes/snippets/powershell/create-requests-read.md)]

# [Python](#tab/python)

[!INCLUDE [python-sdk-preview](../../includes/python-sdk-preview.md)]

:::code language="python" source="./snippets/python/src/snippets/create_requests.py" id="ReadRequestSnippet":::

# [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/createRequests.ts" id="ReadRequestSnippet":::

---

## Use $select to control the properties returned

When retrieving an entity, not all properties are automatically retrieved; sometimes they need to be explicitly selected. Also, in some scenarios it isn't necessary to return the default set of properties. Selecting just the required properties can improve the performance of the request. You can customize the request to include the `$select` query parameter with a list of properties.

<!-- markdownlint-disable MD024 -->
# [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CreateRequests.cs" id="SelectRequestSnippet":::

# [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/create_requests.go" id="SelectRequestSnippet":::

# [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/CreateRequests.java" id="SelectRequestSnippet":::

# [PowerShell](#tab/powershell)

[!INCLUDE [sample-code](includes/snippets/powershell/create-requests-select.md)]

# [Python](#tab/python)

[!INCLUDE [python-sdk-preview](../../includes/python-sdk-preview.md)]

:::code language="python" source="./snippets/python/src/snippets/create_requests.py" id="SelectRequestSnippet":::

# [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/createRequests.ts" id="SelectRequestSnippet":::

---

## Retrieve a list of entities

Retrieving a list of entities is similar to retrieving a single entity except there a number of other options for configuring the request. The `$filter` query parameter can be used to reduce the result set to only those rows that match the provided condition.  The `$orderBy` query parameter will request that the server provide the list of entities sorted by the specified properties.

[!INCLUDE [aad-advanced-queries-note](../../includes/aad-advanced-queries-note.md)]

# [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CreateRequests.cs" id="ListRequestSnippet":::

# [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/create_requests.go" id="ListRequestSnippet":::

# [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/CreateRequests.java" id="ListRequestSnippet":::

# [PowerShell](#tab/powershell)

[!INCLUDE [sample-code](includes/snippets/powershell/create-requests-list.md)]

# [Python](#tab/python)

[!INCLUDE [python-sdk-preview](../../includes/python-sdk-preview.md)]

:::code language="python" source="./snippets/python/src/snippets/create_requests.py" id="ListRequestSnippet":::

# [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/createRequests.ts" id="ListRequestSnippet":::

---

The object returned when retrieving a list of entities is likely to be a paged collection. For details about how to get the complete list of entities, see [paging through a collection](../paging.md).

## Access an item of a collection

For SDKs that support a fluent style, collections of entities can be accessed using an array index. For template-based SDKs, it is sufficient to embed the item identifier in the path segment following the collection. For PowerShell, identifiers are passed as parameters.

# [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CreateRequests.cs" id="ItemByIdRequestSnippet":::

# [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/create_requests.go" id="ItemByIdRequestSnippet":::

# [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/CreateRequests.java" id="ItemByIdRequestSnippet":::

# [PowerShell](#tab/powershell)

[!INCLUDE [sample-code](includes/snippets/powershell/create-requests-index.md)]

# [Python](#tab/python)

[!INCLUDE [python-sdk-preview](../../includes/python-sdk-preview.md)]

:::code language="python" source="./snippets/python/src/snippets/create_requests.py" id="ItemByIdRequestSnippet":::

# [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/createRequests.ts" id="ItemByIdRequestSnippet":::

---

## Use $expand to access related entities

You can use the `$expand` filter to request a related entity, or collection of entities, at the same time that you request the main entity.

# [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CreateRequests.cs" id="ExpandRequestSnippet":::

# [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/create_requests.go" id="ExpandRequestSnippet":::

# [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/CreateRequests.java" id="ExpandRequestSnippet":::

# [PowerShell](#tab/powershell)

[!INCLUDE [sample-code](includes/snippets/powershell/create-requests-expand.md)]

# [Python](#tab/python)

[!INCLUDE [python-sdk-preview](../../includes/python-sdk-preview.md)]

:::code language="python" source="./snippets/python/src/snippets/create_requests.py" id="ExpandRequestSnippet":::

# [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/createRequests.ts" id="ExpandRequestSnippet":::

---

## Delete an entity

Delete requests are constructed in the same way as requests to retrieve an entity, but use a `DELETE` request instead of a `GET`.

# [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CreateRequests.cs" id="DeleteRequestSnippet":::

# [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/create_requests.go" id="DeleteRequestSnippet":::

# [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/CreateRequests.java" id="DeleteRequestSnippet":::

# [PowerShell](#tab/powershell)

[!INCLUDE [sample-code](includes/snippets/powershell/create-requests-delete.md)]

# [Python](#tab/python)

[!INCLUDE [python-sdk-preview](../../includes/python-sdk-preview.md)]

:::code language="python" source="./snippets/python/src/snippets/create_requests.py" id="DeleteRequestSnippet":::

# [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/createRequests.ts" id="DeleteRequestSnippet":::

---

## Make a POST request to create a new entity

For SDKs that support a fluent style, new items can be added to collections with an `Add` method. For template-based SDKs, the request object exposes a `post` method. For PowerShell, a `New-*` command is available that accepts parameters that map to the entity to add. The created entity is usually returned from the call.

# [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CreateRequests.cs" id="CreateRequestSnippet":::

# [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/create_requests.go" id="CreateRequestSnippet":::

# [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/CreateRequests.java" id="CreateRequestSnippet":::

# [PowerShell](#tab/powershell)

[!INCLUDE [sample-code](includes/snippets/powershell/create-requests-create.md)]

# [Python](#tab/python)

[!INCLUDE [python-sdk-preview](../../includes/python-sdk-preview.md)]

:::code language="python" source="./snippets/python/src/snippets/create_requests.py" id="CreateRequestSnippet":::

# [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/createRequests.ts" id="CreateRequestSnippet":::

---

## Updating an existing entity with PATCH

Most updates in Microsoft Graph are performed using a `PATCH` method and therefore it is only necessary to include the properties that you want to change in the object you pass.

# [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CreateRequests.cs" id="UpdateRequestSnippet":::

# [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/create_requests.go" id="UpdateRequestSnippet":::

# [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/CreateRequests.java" id="UpdateRequestSnippet":::

# [PowerShell](#tab/powershell)

[!INCLUDE [sample-code](includes/snippets/powershell/create-requests-update.md)]

# [Python](#tab/python)

[!INCLUDE [python-sdk-preview](../../includes/python-sdk-preview.md)]

:::code language="python" source="./snippets/python/src/snippets/create_requests.py" id="UpdateRequestSnippet":::

# [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/createRequests.ts" id="UpdateRequestSnippet":::

---

## Use HTTP headers to control request behavior

You can use a `Header()` function to attach custom headers to a request. For PowerShell, adding headers is only possible with the `Invoke-GraphRequest` method. A number of Microsoft Graph scenarios use custom headers to adjust the behavior of the request.

# [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CreateRequests.cs" id="HeadersRequestSnippet":::

# [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/create_requests.go" id="HeadersRequestSnippet":::

# [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/CreateRequests.java" id="HeadersRequestSnippet":::

# [PowerShell](#tab/powershell)

[!INCLUDE [sample-code](includes/snippets/powershell/create-requests-headers.md)]

# [Python](#tab/python)

[!INCLUDE [python-sdk-preview](../../includes/python-sdk-preview.md)]

:::code language="python" source="./snippets/python/src/snippets/create_requests.py" id="HeadersRequestSnippet":::

# [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/createRequests.ts" id="HeadersRequestSnippet":::

---

## Provide custom query parameters

For SDKs that support a fluent style, you can provide custom query parameter values by using a list of `QueryOptions` objects. For template-based SDKs, the parameters are URL-encoded and added to the request URI. For PowerShell and Go, defined query parameters for a given API are exposed as parameters to the corresponding command.

# [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/CreateRequests.cs" id="QueryParametersRequestSnippet":::

# [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/create_requests.go" id="QueryParametersRequestSnippet":::

# [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/CreateRequests.java" id="QueryParametersRequestSnippet":::

# [PowerShell](#tab/powershell)

[!INCLUDE [sample-code](includes/snippets/powershell/create-requests-queryparams.md)]

# [Python](#tab/python)

[!INCLUDE [python-sdk-preview](../../includes/python-sdk-preview.md)]

:::code language="python" source="./snippets/python/src/snippets/create_requests.py" id="QueryParametersRequestSnippet":::

# [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/createRequests.ts" id="QueryParametersRequestSnippet":::

---
