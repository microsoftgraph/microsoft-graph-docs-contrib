---
title: 'List horizontalSectionColumns'
description: 'Get a list of the horizontalSectionColumn objects and their properties.'
author: sangle7
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: apiPageType
---

# List horizontalSectionColumns

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [horizontalSectionColumn](../resources/horizontalsectioncolumn.md) objects and their properties. Sort by `id` in ascending order.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "horizontalsectioncolumn_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/horizontalsectioncolumn-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/canvasLayout/horizontalSections/{horizontalSectionId}/columns
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [horizontalSectionColumn](../resources/horizontalsectioncolumn.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- { "blockType": "ignored" } -->

```http
GET https://graph.microsoft.com/beta/sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/canvasLayout/horizontalSections/{horizontalSectionId}/columns
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.horizontalSectionColumn)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.horizontalSectionColumn",
      "id": "1",
      "width": 6
    },
    {
      "@odata.type": "#microsoft.graph.horizontalSectionColumn",
      "id": "2",
      "width": 6
    }
  ]
}
```
