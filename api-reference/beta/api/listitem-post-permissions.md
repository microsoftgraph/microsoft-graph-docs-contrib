---
title: "Create permission on a listItem"
description: "Create a new permission object."
author: "patrick-rodgers"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.date: 07/02/2024
---

# Create permission on a listItem
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [permission](../resources/permission.md) object on a [list item](../resources/listitem.md).

>**Note:** You can only use this method to create a new application permission; you can't use it to create a new list item permission for a user.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "listitem_post_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/listitem-post-permissions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /sites/{site-id}/lists/{list-id}/items/{item-id}/permissions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [permission](../resources/permission.md) object.

## Response

If successful, this method returns a `201 Created` response code and a [permission](../resources/permission.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "listitem_post_permissions",
  "sampleKeys": ["contoso.sharepoint.com,48f1898f-77d9-4a1b-bddc-1f49bb6dc134,7206fc09-e4af-48b3-8730-ed7321396d7a"]
}
-->
```http
POST https://graph.microsoft.com/beta/sites/contoso.sharepoint.com,48f1898f-77d9-4a1b-bddc-1f49bb6dc134,7206fc09-e4af-48b3-8730-ed7321396d7a/lists/44ca0d29-33d3-47c9-8f12-eb0c46e3c7ad/items/1/permissions
Content-Type: application/json

{
  "grantedToV2": {
    "application": {
      "id": "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
      "displayName": "Contoso Time Manager App"
    }
  },
  "roles": ["write"]
}
```
---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permission"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "1",
  "@deprecated.GrantedToIdentities": "GrantedToIdentities has been deprecated. Refer to GrantedToIdentitiesV2",
  "roles": [
    "write"
  ],
  "grantedTo": {
    "application": {
      "id": "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
      "displayName": "Contoso Time Manager App"
    }
  },
  "grantedToV2": {
    "application": {
      "id": "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
      "displayName": "Contoso Time Manager App"
    }
  }
}
```

<!-- {
  "type": "#page.annotation",
  "section": "documentation",
  "tocPath": "ListItems/Permissions/Create listitem permissions"
} -->

