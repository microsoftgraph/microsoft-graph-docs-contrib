---
title: "Create TableRow"
description: "Adds rows to the end of a table. "
ms.localizationpriority: medium
author: "lumine2008"
ms.prod: "excel"
doc_type: apiPageType
---

# Create TableRow

Namespace: microsoft.graph

Adds rows to the end of a table. 

Note that this API can accept multiple rows of data. Adding one row at a time can affect performance. The recommended approach is to batch the rows together in a single call rather than inserting single rows. For best results, collect the rows to be inserted on the application side and perform a single row add operation. Experiment with the number of rows to determine the ideal number of rows to use in a single API call. 

This request might occasionally result in a `504 HTTP` error. The appropriate response to this error is to repeat the request.

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
POST /me/drive/root:/{item-path}:/workbook/worksheets/{id|name}/tables/{id|name}/rows
```

## Request headers

| Name | Description |
|:---------------|:----------|
| Authorization  | Bearer {token}. Required. |
| Content-Type | application/json. Required.|
| Prefer  | respond-async. Indicates that the request is an async request. Optional.  |
| Workbook-Session-Id  | {Workbook-Session-Id}. Created from the **createSession** request. Optional.|

## Request body

In the request body, provide a JSON object with the following parameters.

|Parameter|Type|Description|
|:---------------|:--------|:----------|
| index| Int32| Optional. Specifies the relative position of the new row. If null, the addition happens at the end. Any rows below the inserted row are shifted downwards. Zero-indexed.|
| values| [Json](../resources/json.md)| A two-dimensional array of unformatted values of the table rows.|

## Response

If successful, this method returns a `201 Created` response code and a [workbookTableRow](../resources/workbooktablerow.md) object in the response body.

## Examples

### Example 1: Add two rows to a table

In this example, two rows of data are inserted at the end of the table. 

#### Request

Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["01CCETFLK7GVZTZHSQNRD2AEI5XWTCU6FJ", "Table1"],
  "name": "tablerowcollection_add_table_row"
}-->

```http
POST https://graph.microsoft.com/beta/me/drive/items/01CCETFLK7GVZTZHSQNRD2AEI5XWTCU6FJ/workbook/tables/Table1/rows
Content-type: application/json

{
  "values": "[
    [1, 2, 3],
    [4, 5, 6]
  ]"
}
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tablerowcollection-add-table-row-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tablerowcollection-add-table-row-javascript-snippets.md)]
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
HTTP/1.1 201 Created
Content-type: application/json

{
  "index": 99,
  "values": "[[1, 2, 3]]"
}
```

### Example 2: Add two rows to a table asynchronously

Async requests will be useful if the request takes longer time than expected. Note that the `Workbook-Session-Id` header is required when issuing async requests. The user needs to [Create session](./workbook-createsession.md) before using async rich API features. The header `Prefer:respond-async` is also required in the async requests.

For async features, the user usually needs to issue two or three requests: this request, [Get workbookOperation](./workbookoperation-get.md), and optionally [Get tableRowOperationResult](./workbook-tablerowoperationresult.md).

#### Request

Here is an example of the async request. Note that `202 Accepted` will only happen when the request takes a long time to respond. If the request is completed quickly, it will work like a regular sync request, falling back to [Example 1](#example-1-add-two-rows-to-a-table).


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["01CCETFLK7GVZTZHSQNRD2AEI5XWTCU6FJ", "Table1"],
  "name": "tablerowcollection_add_table_row_async"
}-->

```http
POST https://graph.microsoft.com/beta/me/drive/items/01CCETFLK7GVZTZHSQNRD2AEI5XWTCU6FJ/workbook/tables/Table1/rows
Content-type: application/json
Prefer: respond-async
Workbook-Session-Id: {Workbook-Session-Id}

{
  "values": "[
    [1, 2, 3],
    [4, 5, 6]
  ]"
}
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tablerowcollection-add-table-row-async-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tablerowcollection-add-table-row-async-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

Here is another example of the response that will lead to an async operation. For details, see [Get workbookOperation](./workbookoperation-get.md) and [Get tableRowOperationResult](./workbook-tablerowoperationresult.md).
<!-- {
  "blockType": "response",
  "truncated": true,
  "sampleKeys": ["01CCETFLK7GVZTZHSQNRD2AEI5XWTCU6FJ", "0195cfac-bd22-4f91-b276-dece0aa2378b", "Y2x1c3Rlcj1QU0c0JnNlc3Npb249MTUuU0cyUEVQRjAwMDI4RjI1MS5BMTE2LjEuVTM2LmM4MGRiNjkwLTQwMTktNGNkNS1hYWJiLTJmYzczM2YxZTQ5ZjE0LjUuZW4tVVM1LmVuLVVTMjQuMTAwM2JmZmRhYzUyMzkzOS1Qcml2YXRlMS5TMjQuJTJmUEI0JTJmWjJqZmt1aXhJZHBjeE8xYmclM2QlM2QxNi4xNi4wLjE0NDEwLjM1MDUwMTQuNS5lbi1VUzUuZW4tVVMxLk0xLk4wLjEuUyZ1c2lkPWExOTMyNTU0LTlhNDAtNzYzNi1mNDU3LWEyNjExMmFkNDg2YQ=="],
  "@odata.type": "microsoft.graph.Json"
} -->

```http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/me/drive/items/01CCETFLK7GVZTZHSQNRD2AEI5XWTCU6FJ/workbook/operations/0195cfac-bd22-4f91-b276-dece0aa2378b?sessionId=Y2x1c3Rlcj1QU0c0JnNlc3Npb249MTUuU0cyUEVQRjAwMDI4RjI1MS5BMTE2LjEuVTM2LmM4MGRiNjkwLTQwMTktNGNkNS1hYWJiLTJmYzczM2YxZTQ5ZjE0LjUuZW4tVVM1LmVuLVVTMjQuMTAwM2JmZmRhYzUyMzkzOS1Qcml2YXRlMS5TMjQuJTJmUEI0JTJmWjJqZmt1aXhJZHBjeE8xYmclM2QlM2QxNi4xNi4wLjE0NDEwLjM1MDUwMTQuNS5lbi1VUzUuZW4tVVMxLk0xLk4wLjEuUyZ1c2lkPWExOTMyNTU0LTlhNDAtNzYzNi1mNDU3LWEyNjExMmFkNDg2YQ==
Content-type: application/json

{
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
