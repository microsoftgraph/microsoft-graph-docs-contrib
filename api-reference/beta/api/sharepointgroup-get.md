---
title: "sharePointGroup: get"
description: "Get a sharePointGroup object."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# sharePointGroup: get  

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [sharePointGroup](../resources/sharepointgroup.md) object.

A **sharePointGroup** object is retrieved by invoking this API.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

This API only supports application only permissions.

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Application                            | FileStorageContainer.Selected               |

> [!Note]
> In addition to Microsoft Graph permissions, applications calling this API must at least have the `EnumeratePermissions` container type-level permission on the container type of the corresponding containers. For more information, see [container types](/sharepoint/dev/embedded/concepts/app-concepts/containertypes). To learn more about container type-level permissions, see [SharePoint Embedded authorization](/sharepoint/dev/embedded/concepts/app-concepts/auth#Authorization).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /storage/fileStorage/containers/{containerId}/sharePointGroups/{sharePointGroupId}
```

## Request headers

|Name|Description|
|:---|:---|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body
No request body is supplied for this API.

## Response

If successful, this action returns a `200 OK` response code with a json representation of the retrieved group.

## Example 1: Get a SharePointGroup using ID 
The following example retrieves a SharePointGroup identified by `{sharePointGroupId}` that is local to a SharePointEmbedded container identified by `{containerId}`.


### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_sharepointgroup"
}
-->
``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups/10
Content-Type: application/json

```

---

### Response

The following example shows s sample response with a json object representing the SharePointGroup

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
{
  "@odata.context": "https://contoso.sharepoint.com/_api/v2.1/$metadata#storageContainers('b%21oHTW5i_nhk6psByTjEFuUG6vW5yZJRNDkRSLCcmzK6ZPVcywz3AFT5jpBl1KUcbG')/sharePointGroups/$entity",
  "id" : "4",
  "title": "Sample Group",
  "description": "This is sample description"
}
```

## Example 2: Attempt to get a SharePointGroup using ID 
The following example attempts to get a SharePointGroup identified by `{sharePointGroupId}` that is local to a SharePointEmbedded container identified by `{containerId}`. There's no such group in the container.


### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_sharepointgroup_item_not_found"
}
-->
``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups/12
Content-Type: application/json

```

---

### Response

The following example shows a sample response detailing the nonexistence of the group.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 404 Not Found
{
  "error": {
    "code": "itemNotFound",
    "message": "Item not found"
  }
}
```