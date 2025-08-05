---
title: "Create permission on a driveItem"
description: "Create a new permission for a driveItem."
author: "BarrySh"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.date: 07/25/2025
---

# Create permission on a driveItem
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [permission](../resources/permission.md) object on a [driveItem](../resources/permission.md).

> [!IMPORTANT]
> Consider the following restrictions for this API:
>
> - For OneDrive and SharePoint Online, you can only use this method to create a new application permission. If you want to create a new user permission in a drive item, see [invite](./driveitem-invite.md). For more information on application permissions, see [Selected permissions in OneDrive and SharePoint](/graph/permissions-selected-overview).
> - For SharePoint Embedded, you can only use this method to create a new [sharePointGroup](../resources/sharepointgroup.md) permission with app-only access. Creating a permission on the root item of a container isn't supported.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "driveitem_post_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-post-permissions-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-driveitem-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /drives/{drive-id}/items/{item-id}/permissions
POST /groups/{group-id}/drive/items/{item-id}/permissions
POST /me/drive/items/{item-id}/permissions
POST /sites/{siteId}/drive/items/{itemId}/permissions
POST /users/{userId}/drive/items/{itemId}/permissions
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

### Example 1: Add an application permission to a driveItem in OneDrive or SharePoint Online

This example shows how to add a `write` [permission](../resources/permission.md) for the `Contoso Time Manager App` [application](../resources/identity.md) on a [driveItem](../resources/driveitem.md) identified by `{item-id}` in a [drive](../resources/drive.md) identified by `b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop`.

#### Request

<!-- { "blockType": "request", "name": "driveitem-post-permissions-1", "scopes": "filestoragecontainer.selected", "target": "action" } -->

```http
POST https://graph.microsoft.com/beta/drives/b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop/items/{item-id}/permissions
Content-Type: application/json

{
  "grantedToIdentitiesV2": {
    "application": {
      "id": "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
      "displayName": "Contoso Time Manager App"
    }
  },
  "roles": ["write"]
}
```

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permission"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "1",
  "@deprecated.GrantedToIdentities": "GrantedToIdentities has been deprecated. Refer to GrantedToIdentitiesV2",
  "roles": [
    "write"
  ],
  "grantedToIdentities": [
    {
      "application": {
        "id": "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
        "displayName": "Contoso Time Manager App"
      }
    }
  ],
  "grantedToIdentitiesV2": [
    {
      "application": {
        "id": "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
        "displayName": "Contoso Time Manager App"
      }
    }
  ]
}
```

### Example 2: Add a SharePoint group permission to a driveItem in a SharePoint Embedded container

This example shows how to add a `write` [permission](../resources/permission.md) for the `Internal Collaborators` [sharePointGroup](../resources/sharepointgroup.md) on a [driveItem](../resources/driveitem.md) identified by `{item-id}` in a SharePoint Embedded [fileStorageContainer](../resources/filestoragecontainer.md) identified by `b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop`.

#### Request

<!-- { "blockType": "request", "name": "driveitem-post-permissions-2", "scopes": "filestoragecontainer.selected", "target": "action" } -->

```http
POST https://graph.microsoft.com/beta/drives/b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop/items/{item-id}/permissions
Content-Type: application/json

{
  "grantedToIdentitiesV2": {
    "siteGroup": {
      "id": "10",
      "displayName": "Internal Collaborators"
    }
  },
  "roles": ["write"]
}
```

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permission"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "1",
  "@deprecated.GrantedToIdentities": "GrantedToIdentities has been deprecated. Refer to GrantedToIdentitiesV2",
  "roles": [
    "write"
  ],
  "grantedToIdentities": [
    {
      "siteGroup": {
        "id": "10",
        "displayName": "Internal Collaborators"
      }
    }
  ],
  "grantedToIdentitiesV2": [
    {
      "siteGroup": {
        "id": "10",
        "displayName": "Internal Collaborators"
      }
    }
  ]
}
```

<!-- {
  "type": "#page.annotation",
  "section": "documentation",
  "tocPath": "Items/Permissions/Create driveitem permissions"
} -->
