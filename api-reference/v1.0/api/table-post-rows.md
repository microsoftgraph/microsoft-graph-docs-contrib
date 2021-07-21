---
title: "Create TableRow"
description: "Adds rows to the end of the table. Note that the API can accept multiple rows data using this API. Adding one row at a time could lead to performance degradation. The recommended approach would be to batch the rows together in a single call rather than doing single row insertion. For best results, collect the rows to be inserted on the application side and perform single rows add operation. Experiment with the number of rows to determine the ideal number of rows to use in single API call. "
localization_priority: Normal
author: "lumine2008"
ms.prod: "excel"
doc_type: apiPageType
---

# Create TableRow

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Adds rows to the end of the table. Note that the API can accept multiple rows data using this API. Adding one row at a time could lead to performance degradation. The recommended approach would be to batch the rows together in a single call rather than doing single row insertion. For best results, collect the rows to be inserted on the application side and perform single rows add operation. Experiment with the number of rows to determine the ideal number of rows to use in single API call. 

## Error Handling

This request might occasionally receive a 504 HTTP error. The appropriate response to this error is to repeat the request.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Files.ReadWrite    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/drive/items/{id}/workbook/tables/{id|name}/rows
POST /me/drive/root:/{item-path}:/workbook/tables/{id|name}/rows
POST /me/drive/items/{id}/workbook/worksheets/{id|name}/tables/{id|name}/rows
POST /me/drive/root:/{item-path}:/workbookworksheets/{id|name}/tables/{id|name}/rows

```

## Request headers

| Name | Description |
|:---------------|:----------|
| Authorization  | Bearer {token}. Required. |
| Prefer  | respond-async. This header indicate the request is an async request. Optional.  |
| Workbook-Session-Id  | {Workbook-Session-Id}. Created from createSession request. Optional.|

## Request body

In the request body, provide a JSON object with the following parameters.

|Parameter|Type|Description|
|:---------------|:--------|:----------|
| index| number| Optional. Specifies the relative position of the new row. If null, the addition happens at the end. Any rows below the inserted row are shifted downwards. Zero-indexed.|
| values| (boolean or string or number) collection| A 2-dimensional array of unformatted values of the table rows.|

## Response

If successful, this method returns `200 OK` response code and [workbookTableRow](../resources/workbooktablerow.md) object in the response body.

## Example

In this example two rows of data are inserted at the end of the table. 

### Example 1: add 2 rows to a table

##### Request

Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tablerowcollection_add_1"
}-->

```http
POST https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/tables/{id|name}/rows
Content-type: application/json
Content-length: 51

{
  "values": [
    [1, 2, 3],
    [4, 5, 6]
  ]
}
```
# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tablerowcollection-add-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tablerowcollection-add-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response

Here is an example of the response. Note: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookTableRow"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 45

{
  "index": 99,
  "values": [[1, 2, 3]]
}
```

---

### Example 2: add 2 rows to a table using async

Async requests will be useful if the request takes longer time than expected. Be careful Workbook-Session-Id is mandatory in async requests, user need to create a session before using async richapi features.
For async features, user need to issue 2-3 request to achieve the purpose.

#### 1. Initiate addTableRow Request in async

##### Request

Here is an example of the request. Be careful that 202 Accepted will only happen when the request really takes a long time to respond. If the request is completed very soon. The request will behave like normal sync request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tablerowcollection_add_1"
}-->

```http
POST https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/tables/{id|name}/rows
Content-type: application/json
Prefer: respond-async
Workbook-Session-Id: {Workbook-Session-Id}
Content-length: 51

{
  "values": [
    [1, 2, 3],
    [4, 5, 6]
  ]
}
```

---

##### Response

Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/operations/{id}?sessionInfo
Content-type: application/json
Content-length: 45

{
}
```

#### 2. Poll the url at last response Header called the "Location" property.

##### Request

Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
}-->

```http
GET https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/operations/{id}?sessionId={id}
Content-type: application/json
Content-length: 51
```

---

##### Response Running

Here is an example of the running response. When you get this status, please poll the request again until you get the following responses.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookOperation"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 45

{
  "id": {id},
  "status": "running"
}
```

##### Response Failed

Here is an example of the failed response. The `error` section is the same with the sync errors returned.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookOperation"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 45

{
  "id": {id},
  "status": "failed",
  "error": {
    "code": "NotFound",
    "message": "The requested resource doesn't exist.",
    "innerError": {
      "code": "itemNotFound",
      "message": "The requested resource doesn't exist."
    }
  }
}
```

##### Response Succeeded

Here is an example of the succeeded response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 45

{
  "id": {id},
  "status": "succeeded",
  "resourcelocation": "https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/tableRowOperationResult(key={id})?sessionId={id}"
}
```

#### 3. (Optional) Get return values through the resourceLocation url

##### Request

ResourceLocation comes in some succeeded response from last step.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tablerowcollection_add_1"
}-->

```http
GET https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/tableRowOperationResult(key={id})?sessionId={id}
Content-type: application/json
Content-length: 51
```

---

##### Response

Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.ExcelServices.TableRow"
} -->

```http
HTTP/1.1 200 OK
Location: https://graph.microsoft.com/v1.0/me/drive/items/{drive-item-id}/workbook/operations/{operation-id}
Content-type: application/json
Content-length: 133

{
  "index": 99,
  "values": [[1, 2, 3]]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "TableRowCollection: add",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
