---
title: "Use the Microsoft Graph SDKs to batch requests"
description: "Provides instructions for creating a batch of API requests using the Microsoft Graph SDKs."
ms.localizationpriority: medium
author: DarrelMiller
---

<!-- markdownlint-disable MD024 MD051 -->

# Use the Microsoft Graph SDKs to batch requests

[Batching](../json-batching.md) is a way of combining multiple requests into a single HTTP request. The requests are combined in a single JSON payload, which is sent via POST to the `\$batch` endpoint. Microsoft Graph SDKs have a set of classes to simplify how you create batch payloads and parse batch response payloads.

> [!IMPORTANT]
> For current limitations with JSON batching in Microsoft Graph, see [Known Issues](https://developer.microsoft.com/en-us/graph/known-issues/?filterBy=JSON%20batching&search=).

## Create a batch request

The Microsoft Graph SDKs provide three classes to work with batch requests and responses.

- **BatchRequestStep** - Represents a single request (such as `GET /me`) within a batch. It enables assigning a unique identifier to the request and specifying dependencies between requests.
- **BatchRequestContent** - Simplifies creating the batch request payload. It contains multiple **BatchRequestStep** objects.
- **BatchResponseContent** - Simplifies parsing the response from a batch request. It provides the ability to get all responses, get a specific response by ID, and get the `@odata.nextLink` property if present.

## Simple batching example

This example shows how to send multiple requests in a batch that are not dependent on each other. The requests can be run by the service in any order. This example gets the user and gets the user's calendar view for the current day.

### [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/BatchRequests.cs" id="SimpleBatchSnippet":::

### [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/batch_requests.go" id="SimpleBatchSnippet":::

### [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/BatchRequests.java" id="SimpleBatchSnippet":::

### [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/batchRequests.ts" id="SimpleBatchSnippet":::

---

## Batches with dependent requests

This example shows how to send multiple requests in a batch that are dependent on each other. The requests will be run by the service in the order specified by the dependencies. This example adds an event with a start time during the current day to the user's calendar and gets the user's calendar view for the current day. To make sure that the calendar review returned includes the new event created, the request for the calendar view is configured as dependent on the request to add the new event. This ensures that the add event request will execute first.

> [!NOTE]
> If the add event request fails, the get calendar view request will fail with a `424 Failed Dependency` error.

### [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/BatchRequests.cs" id="DependentBatchSnippet":::

### [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/batch_requests.go" id="DependentBatchSnippet":::

### [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/BatchRequests.java" id="DependentBatchSnippet":::

### [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/batchRequests.ts" id="DependentBatchSnippet":::

---
