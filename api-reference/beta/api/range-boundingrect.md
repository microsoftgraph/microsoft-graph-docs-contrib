---
title: "Range: BoundingRect"
description: "."
author: "lumine2008"
ms.localizationpriority: medium
ms.prod: "excel"
doc_type: apiPageType
---

# Range: BoundingRect

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Gets the smallest range object that encompasses the given ranges. For example, the GetBoundingRect of "B2:C5" and "D10:E15" is "B2:E16".
## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "range_boundingrect" } -->
[!INCLUDE [permissions-table](../includes/permissions/range-boundingrect-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/drive/items/{id}/workbook/names/{name}/range/BoundingRect
GET /me/drive/root:/{item-path}:/workbook/names/{name}/range/BoundingRect
GET /me/drive/items/{id}/workbook/worksheets/{id|name}/range(address='<address>')/BoundingRect
GET /me/drive/root:/{item-path}:/workbook/worksheets/{id|name}/range(address='<address>')/BoundingRect
GET /me/drive/items/{id}/workbook/tables/{id|name}/columns/{id|name}/range/BoundingRect
GET /me/drive/root:/{item-path}:/workbook/tables/{id|name}/columns/{id|name}/range/BoundingRect

```
## Request headers
| Name       | Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|anotherRange|string|The range object or address or range name.|

## Response

If successful, this method returns `200 OK` response code and [workbookRange](../resources/workbookrange.md) object in the response body.

## Example
Here's an example of how to call this API.
##### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "range_boundingrect"
}-->
```http
GET https://graph.microsoft.com/beta/me/drive/items/{id}/workbook/names/{name}/range/BoundingRect
Content-type: application/json

{
  "anotherRange": "anotherRange-value"
}
```

##### Response
The following example shows the response. Note: The response object shown here might be shortened for readability.
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
<!--
{
  "type": "#page.annotation",
  "description": "Range: BoundingRect",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


