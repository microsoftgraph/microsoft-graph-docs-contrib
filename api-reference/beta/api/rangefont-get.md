---
title: "Get RangeFont"
description: "Retrieve the properties and relationships of rangefont object."
author: "lumine2008"
ms.localizationpriority: medium
ms.prod: "excel"
doc_type: apiPageType
---

# Get RangeFont

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of rangefont object.
## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "rangefont_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/rangefont-get-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/drive/items/{id}/workbook/names/{name}/range/format/font
GET /me/drive/root:/{item-path}:/workbook/names/{name}/range/format/font
GET /me/drive/items/{id}/workbook/worksheets/{id|name}/range(address='<address>')/format/font
GET /me/drive/root:/{item-path}:/workbook/worksheets/{id|name}/range(address='<address>')/format/font
GET /me/drive/items/{id}/workbook/tables/{id|name}/columns/{id|name}/range/format/font
GET /me/drive/root:/{item-path}:/workbook/tables/{id|name}/columns/{id|name}/range/format/font
```
## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [workbookRangeFont](../resources/workbookrangefont.md) object in the response body.
## Example
##### Request
Here's an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_rangefont"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/drive/items/{id}/workbook/names/{name}/range/format/font
```

##### Response
Here's an example of the response. Note: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookRangeFont"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "bold": true,
  "color": "color-value",
  "italic": true,
  "name": "name-value",
  "size": 99,
  "underline": "underline-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get RangeFont",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
