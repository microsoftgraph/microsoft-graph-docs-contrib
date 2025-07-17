---
title: "Page through a collection using the Microsoft Graph SDKs"
description: "Provides instructions for creating Microsoft Graph API requests using the Microsoft Graph SDKs."
ms.localizationpriority: medium
author: DarrelMiller
ms.date: 11/07/2024
---

<!-- markdownlint-disable MD051 -->

# Page through a collection using the Microsoft Graph SDKs

For performance reasons, collections of entities are often split into pages and each page is returned with a URL to the next page. The **PageIterator** class simplifies consuming of paged collections. **PageIterator** handles enumerating the current page and requesting subsequent pages automatically.

Alternatively, you can use the `@odata.nextLink` property to [manually request subsequent pages](#manually-requesting-subsequent-pages).

## Request headers

If you send any additional request headers in your initial request, those headers are not included by default in subsequent page requests. If those headers need to be sent on subsequent requests, you must set them explicitly.

## Iterate over all the messages

The following example shows iterating over all the messages in a user's mailbox.

> [!TIP]
> This example sets a small page size using the `top` parameter for demonstration purposes. You can set the page size up to 999 to minimize the number of requests that are necessary.

### [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/Paging.cs" id="PagingSnippet":::

### [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/paging.go" id="ImportSnippet":::

:::code language="go" source="./snippets/go/src/snippets/paging.go" id="PagingSnippet":::

### [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/Paging.java" id="PagingSnippet":::

### [PHP](#tab/PHP)

:::code language="php" source="./snippets/php/snippets/Paging.php" id="PagingSnippet":::

### [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/paging.ts" id="PagingSnippet":::

---

## Stopping and resuming the iteration

Some scenarios require stopping the iteration process in order to perform other actions. It is possible to pause the iteration by returning `false` from the iteration callback. Iteration can be resumed by calling the `resume` method on the **PageIterator**.

<!-- markdownlint-disable MD024 -->
### [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/Paging.cs" id="ResumePagingSnippet":::

### [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/paging.go" id="ImportSnippet":::

:::code language="go" source="./snippets/go/src/snippets/paging.go" id="ResumePagingSnippet":::

### [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/Paging.java" id="ResumePagingSnippet":::

### [PHP](#tab/PHP)

:::code language="php" source="./snippets/php/snippets/Paging.php" id="ResumePagingSnippet":::

### [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/paging.ts" id="ResumePagingSnippet":::

---
<!-- markdownlint-enable MD024 -->

## Manually requesting subsequent pages

As an alternative to using the **PageIterator** class, you can manually check the response for an `@odata.nextLink` property and request the next page.

<!-- markdownlint-disable MD024 -->
### [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/Paging.cs" id="ManualPagingSnippet":::

### [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/paging.go" id="ImportSnippet":::

:::code language="go" source="./snippets/go/src/snippets/paging.go" id="ManualPagingSnippet":::

### [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/Paging.java" id="ManualPagingSnippet":::

### [PHP](#tab/PHP)

:::code language="php" source="./snippets/php/snippets/Paging.php" id="ManualPagingSnippet":::

### [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/paging.ts" id="ManualPagingSnippet":::

---
<!-- markdownlint-enable MD024 -->

## Error handling

[!INCLUDE [paging-error-handling](../includes/paging-error-handling.md)]
