---
title: "sharePointGroup: delete"
description: "Delete a sharePointGroup object."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# sharePointGroup: delete  

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [sharePointGroup](../resources/sharepointgroup.md) object.

A **sharePointGroup** object is deleted by invoking this API.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

This API only supports application only permissions.

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Application                            | FileStorageContainer.Selected               |

> [!Note]
> In addition to Microsoft Graph permissions, applications calling this API must at least have the `DeletePermissions` container type-level permission on the container type of the corresponding containers. For more information, see [container types](/sharepoint/dev/embedded/concepts/app-concepts/containertypes). To learn more about container type-level permissions, see [SharePoint Embedded authorization](/sharepoint/dev/embedded/concepts/app-concepts/auth#Authorization).

## HTTP request

``` http
DELETE https://graph.microsoft.com/beta/storage/fileStorage/containers/{containerId}/sharePointGroups/{sharePointGroupId}
```

## Request headers

|Name|Description|
|:---|:---|
| Authorization  | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type   | application/json. Required. |

## Request body
No request body should be supplied.

## Response

If successful, this action returns a `204 No Content` response.

## Example 1: Delete a SharePointGroup
The following example deletes a SharePointGroup identified by `{sharePointGroupId}` from the container identified by `{containerId}`.

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

## Example 2: Attempt to delete a SharePointGroup that doesn't exist.

The following example attempts to delete a SharePointGroup identified by `{sharePointGroupId}` from the container identified by `{containerId}`. There's no such group in the container.

### Request

``` http
DELETE https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups/11
Content-Type: application/json

```

### Response

The following example shows a sample response. Only existing SharePointGroups can be deleted.

``` http
HTTP/1.1 404 Not Found
{
  "error":{
    "code": "itemNotFound",
    "message": "Item not found"
  }
}
```
