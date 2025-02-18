---
title: "Update sharePointGroup"
description: "Update the properties of a sharePointGroup object."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# Update sharePointGroup

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a sharePointGroup object.


## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "ignored",
  "name": "sharepointgroup-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sharepointgroup-update-permissions.md)]

| Permission type                        | Least privileged permissions  | Higher privileged permissions |
| :------------------------------------- | :---------------------------- | :---------------------------- |
| Delegated (work or school account)     | Not supported.                | Not supported.                |
| Delegated (personal Microsoft account) | Not supported.                | Not supported.                |
| Application                            | FileStorageContainer.Selected | Not available.                |

> [!Note]
> In addition to Microsoft Graph permissions, applications calling this API must at least have the `UpdatePermissions` container type-level permission on the container type of the corresponding containers. For more information, see [container types](/sharepoint/dev/embedded/concepts/app-concepts/containertypes). To learn more about container type-level permissions, see [SharePoint Embedded authorization](/sharepoint/dev/embedded/concepts/app-concepts/auth#Authorization).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /storage/fileStorage/containers/{fileStorageContainerId}/sharePointGroups/{sharePointGroupId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|title|string|The new title of the **sharePointGroup**. The new title can't be more than 255 characters long. Optional.|
|description|string|The new description of the **sharePointGroup**. Updated description can't be longer than 512 characters. Optional.|

## Response

If successful, this method returns a `200 OK` response code and an updated [sharePointGroup](../resources/sharepointgroup.md) object in the response body.

## Examples

### Request

The following example shows a request.

``` http
PATCH https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups/12
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.sharePointGroup",
    "title" : "This is the new group title",
    "description": "Updated group description"
}
```

### Response

The following example shows the response.

``` http
HTTP/1.1 200 OK
{
    "@odata.type": "#microsoft.graph.sharePointGroup",
    "id" : "4",
    "title" : "This is the new group title",
    "description": "Updated group description"
}
```