---
title: "workbookRangeView: itemAt"
description: "One of the following permissions is required to call this API. To learn more, including how to choose permissions, see Permissions."
ms.localizationpriority: medium
author: "lumine2008"
ms.prod: "excel"
doc_type: apiPageType
---

# workbookRangeView: itemAt

Namespace: microsoft.graph


## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workbookrangeview_itemat" } -->
[!INCLUDE [permissions-table](../includes/permissions/workbookrangeview-itemat-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/drive/items/{id}/workbook/worksheets/{id}/range(address={address})/visibleView/itemAt(index={n})
GET /me/drive/root:/{item-path}:/workbook/worksheets/{id}/range(address={address})/visibleView/itemAt(index={n})

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

If successful, this method returns `200 OK` response code and [workbookRangeView](../resources/workbookrangeview.md) object in the response body.

## Example
Here is an example of how to call this API.
##### Request
The following example shows a request.
<!--{
  "blockType": "request",
  "isComposable": true,
  "name": "workbookrangeview_itemat"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/drive/root/workbook/worksheets/{id}/range(address='A1:Z10')/visibleView/itemAt(index=0)

```

##### Response
The following example shows the response. Note: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookRangeView"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "cellAddresses": "cellAddresses-value",
  "columnCount": 99,
  "formulas": "formulas-value",
  "formulasLocal": "formulasLocal-value",
  "formulasR1C1": "formulasR1C1-value",
  "index": 99
}
```

