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

## Examples

### Example 1: Add two rows to a table

In this example, two rows of data are inserted at the end of the table. 

#### Request

Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tablerowcollection_add_1"
}-->

```http
POST https://graph.microsoft.com/beta/me/drive/items/01ACL7N6347W3MDEZPY5DKOJ5GSCP7KK7H/workbook/tables/Table1/rows
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

#### Response

Here is an example of the response. 

> **Note:** The response object shown here might be shortened for readability.
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

### Example 2: Add two rows to a table using async

Async requests will be useful if the request takes longer time than expected. Note that `Workbook-Session-Id` is required in async requests. The user needs to create a session before using async rich API features.

For async features, the user needs to issue 2-3 requests.

#### 1. Initiate addTableRow request in async

##### Request

Here is an example of the request. Note that `202 Accepted` will only happen when the request takes a long time to respond. If the request is completed quickly, it will work like a regular sync request.

<!-- {
  "blockType": "request",
  "name": "tablerowcollection_add_1"
}-->

```http
POST https://graph.microsoft.com/beta/me/drive/items/01ACL7N6347W3MDEZPY5DKOJ5GSCP7KK7H/workbook/tables/Table1/rows
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

Workbook-Session-Id header here is quite long and the following document will also quote it as {Workbook-Session-Id}. Here is an example:
"Workbook-Session-Id": "cluster=PJP1&session=15.OS1PEPF00001F991.A257.1.E176.http%3a%2f%2ftier7%3fid%3dhttps%253A%252F%252Fmicrosoftapc%252Dmy%252Esharepoint%252Ecom%252Fpersonal%252Fanyone%255Fmicrosoft%255Fcom1%252F%255Fvti%255Fbin%252Fwopi%252Eashx%252Ffiles%252Fc1b6fd7c2f9346c7a727a6909ff52be714.5.en-US5.en-US24.1003bffdac523939-Private1.S24.j8OARr%2b6m0%2bCbw%2fXdGlZjQ%3d%3d16.16.0.14312.3590414.5.en-US5.en-US1.M1.N0.1.S&usid=1acd001a-4482-a2a7-91f7-3959ee03fe45"

##### Response

Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/me/drive/items/01ACL7N6347W3MDEZPY5DKOJ5GSCP7KK7H/workbook/operations/df627261-2c74-4ca0-8fd7-0082e630544d?sessionInfo
Content-type: application/json
Content-length: 45

{
}
```

#### 2. Poll the URL at last response header called the location property

##### Request

Here is an example of the request.

<!-- {
  "blockType": "request",
}-->

```http
GET https://graph.microsoft.com/beta/me/drive/items/01ACL7N6347W3MDEZPY5DKOJ5GSCP7KK7H/workbook/operations/df627261-2c74-4ca0-8fd7-0082e630544d?sessionId={id}
Content-type: application/json
Content-length: 51
```

##### Response running

Here is an example of the running response. When you get this status, poll the request again until you get the following responses.
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
  "id": "df627261-2c74-4ca0-8fd7-0082e630544d",
  "status": "running"
}
```

##### Response failed

Here is an example of the failed response. The `error` section shows the sync errors returned.
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
  "id": "df627261-2c74-4ca0-8fd7-0082e630544d",
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

##### Response succeeded

Here is an example of a successful response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 45

{
  "id": "df627261-2c74-4ca0-8fd7-0082e630544d",
  "status": "succeeded",
  "resourcelocation": "https://graph.microsoft.com/beta/me/drive/items/01ACL7N6347W3MDEZPY5DKOJ5GSCP7KK7H/workbook/tableRowOperationResult(key='df627261-2c74-4ca0-8fd7-0082e630544d')?sessionId={sessionId}"
}
```

The sessionId part here is quite long and the following document will also eliminate it as {sessionId}. Here is an example:
sessionId=Y2x1c3Rlcj1QSlAxJnNlc3Npb249MTUuT1MxUEVQRjAwMDAzQ0FCMS5BMTE2LjEuVTM2LjZlYWZjOWE1LTY0OWYtNDZlZi04ZThiLTIyMmIzM2Y5ZTQxMDE0LjUuZW4tVVM1LmVuLVVTMjQuMTAwM2JmZmRhYzUyMzkzOS1Qcml2YXRlMS5TMjQuM3R3Qm9pNEIlMmZrS3M4MURNN0s2RFNRJTNkJTNkMTYuMTYuMC4xNDMxMi4zNTkwNDE0LjUuZW4tVVM1LmVuLVVTMS5NMS5OMC4xLlMmdXNpZD1kN2ExMGE5ZC01NmE4LWNhMDMtOTNlYi1iM2M1MDY2ODRjNGI=
#### 3. (Optional) Get return values from the resourceLocation URL

##### Request

The resource location is returned in a successful response from the previous step.

<!-- {
  "blockType": "request",
  "name": "tablerowcollection_add_1"
}-->

```http
GET https://graph.microsoft.com/beta/me/drive/items/01ACL7N6347W3MDEZPY5DKOJ5GSCP7KK7H/workbook/tableRowOperationResult(key='df627261-2c74-4ca0-8fd7-0082e630544d')?sessionId={sessionId}
Content-type: application/json
Content-length: 51
```

##### Response

Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.ExcelServices.TableRow"
} -->

```http
HTTP/1.1 200 OK
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
