---
title: "Update rangefill"
description: "Update the properties of rangefill object."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: apiPageType
ms.date: 08/21/2024
---

# Update rangefill

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of rangefill object.
## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "rangefill_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/rangefill-update-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /me/drive/items/{id}/workbook/names/{name}/range/format/fill
PATCH /me/drive/root:/{item-path}:/workbook/names/{name}/range/format/fill
PATCH /me/drive/items/{id}/workbook/worksheets/{id|name}/range(address='<address>')/format/fill
PATCH /me/drive/root:/{item-path}:/workbook/worksheets/{id|name}/range(address='<address>')/format/fill
PATCH /me/drive/items/{id}/workbook/tables/{id|name}/columns/{id|name}/range/format/fill
PATCH /me/drive/root:/{item-path}:/workbook/tables/{id|name}/columns/{id|name}/range/format/fill
```
## Optional request headers
| Name       | Description|
|:-----------|:-----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Workbook-Session-Id  | Workbook session ID that determines if changes are persisted or not. Optional.|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that aren't included in the request body maintain their previous values or are recalculated based on changes to other property values. For best performance, you shouldn't include existing values that didn't change.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|color|string|HTML color code representing the color of the borderline, of the form #RRGGBB (for example "FFA500") or as a named HTML color (for example "orange")|

## Response

If successful, this method returns a `200 OK` response code and updated [workbookRangeFill](../resources/workbookrangefill.md) object in the response body.

## Example

##### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_rangefill"
}-->
```http
PATCH https://graph.microsoft.com/beta/me/drive/items/{id}/workbook/names/{name}/range/format/fill
Content-type: application/json

{
  "color": "color-value"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-rangefill-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response
The following example shows the response. Note: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update rangefill",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


