---
title: "Delete sharePointGroup"
description: "Delete a sharePointGroup object."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# Delete sharePointGroup

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [sharePointGroup](../resources/sharepointgroup.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "ignored",
  "name": "filestoragecontainer-delete-sharepointgroups-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-delete-sharepointgroups-permissions.md)]

| Permission type                        | Least privileged permissions  | Higher privileged permissions |
| :------------------------------------- | :---------------------------- | :---------------------------- |
| Delegated (work or school account)     | Not supported.                | Not supported.                |
| Delegated (personal Microsoft account) | Not supported.                | Not supported.                |
| Application                            | FileStorageContainer.Selected | Not available.                |

> [!Note]
> In addition to Microsoft Graph permissions, applications calling this API must at least have the `DeletePermissions` container type-level permission on the container type of the corresponding containers. For more information, see [container types](/sharepoint/dev/embedded/concepts/app-concepts/containertypes). To learn more about container type-level permissions, see [SharePoint Embedded authorization](/sharepoint/dev/embedded/concepts/app-concepts/auth#Authorization).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /storage/fileStorage/containers/{fileStorageContainerId}/sharePointGroups/{sharePointGroupId}/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Example 1: Delete a sharePointGroup
The following example deletes a sharePointGroup identified by `{sharePointGroupId}` from the container identified by `{containerId}`.

### Request

``` http
DELETE /storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups/10
Content-Type: application/json

```

### Response

The following example shows the response.

``` http
HTTP/1.1 204 No Content
```

## Example 2: Attempt to delete a sharePointGroup that doesn't exist.

The following example attempts to delete a sharePointGroup identified by `{sharePointGroupId}` from the container identified by `{containerId}`. There's no such group in the container.

### Request

``` http
DELETE https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups/11
Content-Type: application/json

```

### Response

The following example shows a sample response. Only existing sharePointGroups can be deleted.

``` http
HTTP/1.1 404 Not Found
{
  "error":{
    "code": "itemNotFound",
    "message": "Item not found"
  }
}
```
