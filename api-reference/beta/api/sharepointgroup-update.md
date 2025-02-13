---
title: "sharePointGroup: update"
description: "Update a sharePointGroup object."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# sharePointGroup: update  

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An existing [sharePointGroup](../resources/sharepointgroup.md) object is updated by invoking this API.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

This API only supports application only permissions.

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Application                            | FileStorageContainer.Selected               |

> [!Note]
> In addition to Microsoft Graph permissions, applications calling this API must at least have the `UpdatePermissions` container type-level permission on the container type of the corresponding containers. For more information, see [container types](/sharepoint/dev/embedded/concepts/app-concepts/containertypes). To learn more about container type-level permissions, see [SharePoint Embedded authorization](/sharepoint/dev/embedded/concepts/app-concepts/auth#Authorization).

## HTTP request

``` http
PATCH /storage/fileStorage/containers/{containerId}/sharePointGroups/{sharePointGroupId}
```

## Request headers

|Name|Description|
|:---|:---|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body
In the request body, supply the values for the updated title or updated description for the **sharePointGroup**

|Property|Type|Description|
|:---|:---|:---|
|title|string|The new title of the **sharePointGroup**. The new title can't be more than 255 characters long. Optional.|
|description|string|The new description of the **sharePointGroup**. Updated description can't be longer than 512 characters. Optional.|

## Response

If successful, this action returns a `200 OK` response code with a json representation of the updated group.

## Examples

### Request

The following example shows a request.

``` http
PATCH https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups/12
Content-Type: application/json

{
    "title" : "This is the new group title",
    "description": "Updated group description"
}
```

### Response

The following example shows the response.

``` http
HTTP/1.1 200 OK
{
    "@odata.context": "https://contoso.sharepoint.com/_api/v2.1/$metadata#storageContainers('b%21oHTW5i_nhk6psByTjEFuUG6vW5yZJRNDkRSLCcmzK6ZPVcywz3AFT5jpBl1KUcbG')/sharePointGroups/$entity",
    "id" : "4",
    "title" : "This is the new group title",
    "description": "Updated group description"
}
```