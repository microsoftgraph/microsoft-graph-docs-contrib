---
title: "TableRow: Range"
description: "Returns the range object associated with the entire row."
author: "lumine2008"
ms.localizationpriority: medium
ms.prod: "excel"
doc_type: apiPageType
---

# TableRow: Range

Namespace: microsoft.graph

Returns the range object associated with the entire row.
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
GET /me/drive/items/{id}/workbook/tables/{id|name}/rows/itemAt(index={index})/range
GET /me/drive/root:/{item-path}:/workbook/tables/{id|name}/rows/itemAt(index={index})/range
GET /me/drive/items/{id}/workbook/worksheets/{id|name}/tables/{id|name}/rows/itemAt(index={index})range
GET /me/drive/root:/{item-path}:/workbook/worksheets/{id|name}/tables/{id|name}/rows/itemAt(index={index})/range

```
## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {token}. Required. |
| Workbook-Session-Id  | Workbook session ID that indicates whether changes are persisted. Optional.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns `200 OK` response code and a [range](../resources/range.md) object in the response body.

## Examples

### Request
The following example shows a request.

<!--{
  "blockType": "request",
  "name": "tablerow_range"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/drive/items/{id}/workbook/tables/{id|name}/rows/itemAt(index={index})/range
```


### Response
The following example shows the response. 

>**Note:** The response object shown here might be shortened for readability.
>
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookRange"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "address": "address-value",
  "addressLocal": "addressLocal-value",
  "cellCount": 99,
  "columnCount": 99,
  "columnIndex": 99,
  "valueTypes": "valueTypes-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "TableRow: Range",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

