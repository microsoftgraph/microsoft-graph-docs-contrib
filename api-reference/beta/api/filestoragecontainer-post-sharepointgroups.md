---
title: "Create sharePointGroup"
description: "Create a new sharePointGroup object."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# Create sharePointGroup

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [sharePointGroup](../resources/sharepointgroup.md) object. The sharePointGroup will only exist in the scope of the fileStorageContainer it was created in. To add permissions for the sharePointGroup on driveItems will require the use of the [driveItem permissions api](./driveitem-post-permissions.md). Upto 10000 sharePointGroups can be created for XXXX.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "ignored",
  "name": "filestoragecontainer-post-sharepointgroups-permissions"
}
-->

[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-post-sharepointgroups-permissions.md)]

| Permission type                        | Least privileged permissions  | Higher privileged permissions |
| :------------------------------------- | :---------------------------- | :---------------------------- |
| Delegated (work or school account)     | Not supported.                | Not supported.                |
| Delegated (personal Microsoft account) | Not supported.                | Not supported.                |
| Application                            | FileStorageContainer.Selected | Not available.                |

> [!Note]
> In addition to Microsoft Graph permissions, applications calling this API must at least have the `AddPermissions` container type-level permission on the container type of the corresponding containers. For more information, see [container types](/sharepoint/dev/embedded/concepts/app-concepts/containertypes). To learn more about container type-level permissions, see [SharePoint Embedded authorization](/sharepoint/dev/embedded/concepts/app-concepts/auth#Authorization).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /storage/fileStorage/containers/{fileStorageContainerId}/sharePointGroups
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [sharePointGroup](../resources/sharepointgroup.md) object.

You can specify the following properties when creating a **sharePointGroup**.

|Property|Type|Description|
|:---|:---|:---|
|title|string|The title of the **sharePointGroup**. The title can't be more than 255 characters long. Required.|
|description|string|A user-visible description of the **sharePointGroup**. Description can't be longer than 512 characters. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [sharePointGroup](../resources/sharepointgroup.md) object in the response body.


## Example 1: Create a new sharePointGroup that is local to a fileStoragContainer

The following example creates a new sharePointGroup under the container identified by `{containerId}`. The title and description of the sharePointGroup are shown in the request body.

### Request

``` http
POST https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.sharePointGroup",
    "title": "Sample Group",
    "description": "This is a sample description"
}
```

### Response

The following example shows a sample response. The group is successfully created with a newly assigned ID that acts as an identifier.

``` http
HTTP/1.1 201 Created
{
  "@odata.type": "#microsoft.graph.sharePointGroup",
  "id" : "4",
  "title": "Sample Group",
  "description": "This is sample description"
}
```