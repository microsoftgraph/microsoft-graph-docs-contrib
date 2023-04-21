---
title: "Best practices for working with the Excel API"
description: "Find tips for working with Excel APIs in Microsoft Graph. Learn how to manage sessions, work with APIs that take a long time to complete, and reduce throttling errors."
author: "grangeryy"
ms.localizationpriority: medium
ms.prod: "excel"
---

# Best practices for working with the Excel API

This article provides recommendations for working with the [Excel APIs](/graph/api/resources/excel) in Microsoft Graph.

## Manage sessions in the most efficient way

If you have more than one call to make within a certain period of time, we recommend that you create a session and pass the session ID with each request. To represent the session in the API, use the `workbook-session-id: {session-id}` header. By doing so, you can use the Excel APIs in the most efficient way.

The following example shows you how to add a new number to a table and then find one record in a workbook using this approach.

### Step 1: Create a session

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_excel_session_1"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/createSession
Content-type: application/json

{
  "persistChanges": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-excel-session-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-excel-session-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-excel-session-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-excel-session-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-excel-session-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is a successful response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookSessionInfo"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "id": "id-value",
  "persistChanges": true
}
```

### Step 2: Add a new row to the table

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "add_a_table_row"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/tables/Table1/rows/add
Content-type: application/json
workbook-session-id: {session-id}

{
  "values": [[“east”, “pear”, 4]]
}
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/add-a-table-row-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookTableRow"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "index": 6,
  "values": [[“east”, “pear”, 4]]
}
```

### Step 3: Look up a value in the updated table

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "look_up_value_in_table"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/functions/vlookup
Content-type: application/json
workbook-session-id: {session-id}

{
    "lookupValue":"pear",
    "tableArray":{"Address":"Sheet1!B2:C7"},
    "colIndexNum":2,
    "rangeLookup":false
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/look-up-value-in-table-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/look-up-value-in-table-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/look-up-value-in-table-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/look-up-value-in-table-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookFunctionResult"
} -->
```http
HTTP code: 200 OK
content-type: application/json

{
    "value": 5
}
```

### Step 4: Close the session after all the requests are completed

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "close_excel_session2"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/closeSession
Content-type: application/json
workbook-session-id: {session-id}

{
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/close-excel-session2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/close-excel-session2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/close-excel-session2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/close-excel-session2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/close-excel-session2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

For more details, see [Create session](/graph/api/workbook-createsession) and [Close session](/graph/api/workbook-closesession).

## Work with APIs that take a long time to complete

You might notice that some operations take an indeterminate amount time to complete; for example, opening a large workbook. It is easy to hit timeout while waiting for the response to these requests. To resolve this issue, we provide the long-running operation pattern. When you use this pattern, you don't need to worry about the timeout for the request.

Currently, the session creation Excel API in Microsoft Graph has the long-running operation pattern enabled. This pattern involves the following steps:

1. Add a `Prefer: respond-async` header to the request to indicate that it is a long-running operation when you crate a session.
2. A long-running operation will return a `202 Accepted` response along with a Location header to retrieve the operation status. If the session creation completes in several seconds, it will return a regular create session response instead of using the long-running operation pattern.
3. With the `202 Accepted` response, you can retrieve the operation status at the specified location. Operation status values include `notStarted`, `running`, `succeeded`, and `failed`.
4. After the operation completes, you can get the session creation result through the specified URL in the succeeded response.

The following example creates a session using the long-running operation pattern.

### Initial request to create session

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_excel_session_with_long_running"
}-->
```http
POST https://graph.microsoft.com/v1.0/me/drive/items/{drive-item-id}/workbook/createSession
Prefer: respond-async
Content-type: application/json
{
    "persistChanges": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-excel-session-with-long-running-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-excel-session-with-long-running-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-excel-session-with-long-running-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-excel-session-with-long-running-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-excel-session-with-long-running-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The long-running operation pattern will return a `202 Accepted` response similar to the following.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookSessionInfo"
} -->
```http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/v1.0/me/drive/items/{drive-item-id}/workbook/operations/{operation-id}
Content-type: application/json

{
}
```

In some cases, if the creation succeeds within seconds, it won't enter the long-running operation pattern; instead, it returns as a regular create session and the successful request will return a `201 Created` response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookSessionInfo"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "id": "id-value",
  "persistChanges": true
}
```

The following example shows the response when the request fails.

>**Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 500 Internal Server Error
Content-type: application/json

{
  "error":{
    "code": "internalServerError",
    "message": "An internal server error occurred while processing the request.",
    "innerError": {
      "code": "internalServerErrorUncategorized",
      "message": "An unspecified error has occurred.",
      "innerError": {
        "code": "GenericFileOpenError",
        "message": "The workbook cannot be opened."
      }
    }
  }
}
```

### Poll status of the long-running create session

With the long-running operation pattern, you can get the creation status at specified location by using the following request. The suggested interval to poll status is around 30 seconds. The maximum interval should be no more than 4 minutes.

#### Request
<!-- {
  "blockType": "request",
  "name": "poll_status"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/drive/items/{drive-item-id}/workbook/operations/{operation-id}
{
}
```

#### Response

The following is the response when the operation has a status of `running`.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": {operation-id},
    "status": "running"
}
```

The following is the response when the operation status is `succeeded`.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": {operation-id},
    "status": "succeeded",
    "resourceLocation": "https://graph.microsoft.com/v1.0/me/drive/items/{drive-item-id}/workbook/sessionInfoResource(key='{key}')
}
```

The following is the response when the operation status is `failed`.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": {operation-id},
  "status": "failed",
  "error":{
    "code": "internalServerError",
    "message": "An internal server error occurred while processing the request.",
    "innerError": {
      "code": ""internalServerErrorUncategorized",
      "message": "An unspecified error has occurred.",
      "innerError": {
        "code": "GenericFileOpenError",
        "message": "The workbook cannot be opened."
      }
    }
  }
}
```

For more details about errors, see [Error codes and messages](workbook-error-codes.md#error-codes-and-messages).

### Acquire session information

#### Request

With a status of `succeeded`, you can get the created session information through `resourceLocation` with a request similar to the following.
<!-- {
  "blockType": "request",
  "name": "acquire_session_information"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/drive/items/{drive-item-id}/workbook/sessionInfoResource(key='{key}')
{
}
```

#### Response
The following is the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookSessionInfo"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": "id-value",
    "persistChanges": true
}
```

> [!NOTE]
> Acquire session information depends on the initial request. You don't need to acquire the result if the initial request doesn't return a response body.

## Reduce throttling errors

Excel APIs in Microsoft Graph affect the resource usage of multiple dependency services. The impact can vary between different requests: for example, you might expect that updating a short string in a single cell of a small workbook would consume fewer resources than adding a big table with complex formulas to a large workbook.

Even with the same API, parameters and target workbooks can introduce significant differences. Therefore Excel API throttling isn't defined with simple and universal limit numbers, as they would result in more restrictive limits. The following best practices will help you complete tasks more quickly with fewer throttling errors.

### Retry-After header

In many cases, a throttling response includes a `Retry-After` header. Respecting the value of the header and delaying similar requests would help the client recover from throttling. For details about handling error responses from Excel APIs in Microsoft Graph, see [Error handling for Excel APIs in Microsoft Graph](workbook-error-handling.md).

### Throttling and concurrency

Another factor related to throttling is request concurrency. We don't recommend increasing concurrency when using Excel APIs (for example, parallelizing the requests to the same workbook), especially for write requests. Instead, unless there is a specific concern, such as significant networking overhead compared to very short request execution time, we recommend sequential usage in the most common case: for each workbook, only send the next request after receiving a successful response to the current request.

Concurrent write requests to the same workbook don’t usually run in parallel (although in some cases they do); rather, they are often the cause of throttling, timeout (when requests are queued on servers), merge conflict (when concurrent sessions are involved) and other types of failures. They also complicate error handling; for example, when you receive a failure response, there is no way to confirm the status of other pending requests, which makes it difficult to determine or to recover the state of the workbook.

## See also

* [Use the Excel REST API](/graph/api/resources/excel)
