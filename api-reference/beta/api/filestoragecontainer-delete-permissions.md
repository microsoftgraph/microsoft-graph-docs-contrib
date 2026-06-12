---
title: "Delete permissions"
description: "Delete permissions from a fileStorageContainer object."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 05/19/2026
---

# Delete permissions


Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete permissions from a [fileStorageContainer](../resources/filestoragecontainer.md) object.

By default, this API removes access for an identity to the container and all items within the container, regardless of whether the identity has container-scoped or item-level permissions. You can add an optional `Prefer: onlyRemoveContainerScopedPermission` header when you call the API if only the identity's container-scoped permissions need to be removed. All item-level permissions explicitly granted to the identity (if any) are retained. 

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- { "blockType": "permissions", "name": "filestoragecontainer_delete_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-delete-permissions-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
DELETE /storage/fileStorage/containers/{containerId}/permissions/{permissionId}
DELETE /storage/fileStorage/containers/{containerId}/permissions(email='{email}')
DELETE /storage/fileStorage/containers/{containerId}/permissions(userPrincipalName='{userPrincipalName}')
```

Use the `{email}` or `{userPrincipalName}` alternate key only for permissions granted to a user. Use `{permissionId}` for other permission types. Alternate key values are strings and must be URL-encoded if they contain characters that aren't valid in a URL.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Delete a permission by ID

The following example shows how to delete a permission by ID.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "delete_filestoragecontainer_permissions_by_id"
}
-->
```http
DELETE https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/permissions/cmVhZGVyX2k6MCMuZnxtZW1iZXJzaGlwfGpobmFAY29udG9zby5jb20
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

### Example 2: Delete a permission by userPrincipalName

The following example shows how to use the **userPrincipalName** alternate key to delete a permission.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "delete_filestoragecontainer_permissions_by_userprincipalname"
}
-->
```http
DELETE https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/permissions(userPrincipalName='jhan@contoso.com')
```

#### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```


