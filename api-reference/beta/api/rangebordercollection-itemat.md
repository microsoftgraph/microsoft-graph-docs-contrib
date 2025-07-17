---
title: "RangeBorderCollection: ItemAt"
description: "Gets a border object using its index"
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: apiPageType
ms.date: 08/21/2024
---

# RangeBorderCollection: ItemAt

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Gets a border object using its index
## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "rangebordercollection_itemat" } -->
[!INCLUDE [permissions-table](../includes/permissions/rangebordercollection-itemat-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/drive/items/{id}/workbook/names/{name}/range/format/borders/ItemAt(index={index})
GET /me/drive/root:/{item-path}:/workbook/names/{name}/range/format/borders/ItemAt(index={index})
GET /me/drive/items/{id}/workbook/worksheets/{id|name}/range(address='<address>')/format/borders/ItemAt(index={index})
GET /me/drive/root:/{item-path}:/workbook/worksheets/{id|name}/range(address='<address>')/format/borders/ItemAt(index={index})
GET /me/drive/items/{id}/workbook/tables/{id|name}/columns/{id|name}/range/format/borders/ItemAt(index={index})
GET /me/drive/root:/{item-path}:/workbook/tables/{id|name}/columns/{id|name}/range/format/borders/ItemAt(index={index})
```

## Function parameters

The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|index|Int32|Index value of the object to be retrieved. Zero-indexed.|

## Request headers
| Name       | Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns `200 OK` response code and [workbookRangeBorder](../resources/workbookrangeborder.md) object in the response body.

## Example
Here is an example of how to call this API.
##### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "rangebordercollection_itemat"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/drive/items/{id}/workbook/names/{name}/range/format/borders/ItemAt(index=8)
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/rangebordercollection-itemat-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response
The following example shows the response. Note: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookRangeBorder"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "id-value",
  "color": "color-value",
  "style": "style-value",
  "sideIndex": "sideIndex-value",
  "weight": "weight-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "RangeBorderCollection: ItemAt",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


