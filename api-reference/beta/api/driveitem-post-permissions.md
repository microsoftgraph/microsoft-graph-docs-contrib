---
title: "Create permission on a driveItem"
description: "Create a new permission object for a driveItem."
author: "BarrySh"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.date: 11/21/2025
---

# Create permission on a driveItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [permission](../resources/permission.md) object on a [driveItem](../resources/driveitem.md).

> [!IMPORTANT]
> This API has the following restrictions:
>
> - For OneDrive for work or school and SharePoint Online, you can only use this method to create a new application permission. If you want to create a new user permission in a **driveItem**, see [invite](./driveitem-invite.md). For more information on application permissions, see [Overview of Selected permissions in OneDrive and SharePoint](/graph/permissions-selected-overview).
> - For SharePoint Embedded, you can only use this method to create a new [sharePointGroup](../resources/sharepointgroup.md) permission with app-only access. You can't create a permission on the root item of a container.

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

> [!IMPORTANT]
>
> - This API only accepts `grantedToV2` as input for the **permission** object. Other properties such as `grantedToIdentitiesV2` or the deprecated `grantedTo` and `grantedToIdentities` are not accepted.
> - For SharePoint Embedded, when creating a new [sharePointGroup](../resources/sharepointgroup.md) permission, the request body must include both the `id` and `displayName` of the **sharePointGroup** referenced in the `grantedToV2.siteGroup` property. See [Example 2](#example-2-add-a-sharepoint-group-permission-to-a-driveitem-in-a-sharepoint-embedded-container).

## Response

If successful, this method returns a `201 Created` response code and a [permission](../resources/permission.md) object in the response body.

## Examples

### Example 1: Add an application permission to a driveItem in OneDrive or SharePoint Online

The following example shows how to add a `write` [permission](../resources/permission.md) for the `Contoso Time Manager App` [application](../resources/identity.md) identified by `89ea5c94-7736-4e25-95ad-3fa95f62b66e`, on a [driveItem](../resources/driveitem.md) identified by `01V4EPHZNV2OJQJNBPWNCKDTXCQ5TSVBJU` in a [drive](../resources/drive.md) identified by `b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop`.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "driveitem-post-permissions-1",
  "scopes": "filestoragecontainer.selected",
  "target": "action"
} -->
```http
POST https://graph.microsoft.com/beta/drives/b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop/items/01V4EPHZNV2OJQJNBPWNCKDTXCQ5TSVBJU/permissions
Content-Type: application/json

{
  "grantedToV2": {
    "application": {
      "id": "89ea5c94-7736-4e25-95ad-3fa95f62b66e"
    }
  },
  "roles": ["write"]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/driveitem-post-permissions-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/driveitem-post-permissions-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/driveitem-post-permissions-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/driveitem-post-permissions-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/driveitem-post-permissions-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/driveitem-post-permissions-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/driveitem-post-permissions-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

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
  "id": "aTowaS50fG1zLnNwLmV4dHw4OWVhNWM5NC03NzM2LTRlMjUtOTVhZC0zZmE5NWY2MmI2NmVAZDljZTBmYzEtNjFkOC00YTJlLWI1ZDMtMTg3NzBkZjA2NzJj",
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

### Example 2: Add a SharePoint group permission to a driveItem in a SharePoint Embedded container

The following example shows how to add a `write` [permission](../resources/permission.md) for the `Internal Collaborators` [sharePointGroup](../resources/sharepointgroup.md) on a [driveItem](../resources/driveitem.md) identified by `01V4EPHZNV2OJQJNBPWNCKDTXCQ5TSVBJU` in a SharePoint Embedded [fileStorageContainer](../resources/filestoragecontainer.md) identified by `b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop`.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "driveitem-post-permissions-2",
  "scopes": "filestoragecontainer.selected",
  "target": "action"
} -->
```http
POST https://graph.microsoft.com/beta/drives/b!s8RqPCGh0ESQS2EYnKM0IKS3lM7GxjdAviiob7oc5pXv_0LiL-62Qq3IXyrXnEop/items/01V4EPHZNV2OJQJNBPWNCKDTXCQ5TSVBJU/permissions
Content-Type: application/json

{
  "grantedToV2": {
    "siteGroup": {
      "id": "10",
      "displayName": "Internal Collaborators"
    }
  },
  "roles": ["write"]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/driveitem-post-permissions-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/driveitem-post-permissions-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/driveitem-post-permissions-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/driveitem-post-permissions-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/driveitem-post-permissions-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/driveitem-post-permissions-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/driveitem-post-permissions-2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

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
  "id": "aTowaS50fG1zLnNwLmV4dHwxMEBkOWNlMGZjMS02MWQ4LTRhMmUtYjVkMy0xODc3MGRmMDY3MmM=",
  "roles": [
    "write"
  ],
  "grantedToV2": {
    "siteGroup": {
      "id": "10",
      "displayName": "Internal Collaborators"
    }
  },
  "grantedTo": {
    "siteGroup": {
      "id": "10",
      "displayName": "Internal Collaborators"
    }
  }
}
```

<!-- {
  "type": "#page.annotation",
  "section": "documentation",
  "tocPath": "Items/Permissions/Create driveitem permissions"
} -->
