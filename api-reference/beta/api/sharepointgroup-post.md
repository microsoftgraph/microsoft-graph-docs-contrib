---
title: "sharePointGroup: create"
description: "Create a sharePointGroup object."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# sharePointGroup: create  

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [sharePointGroup](../resources/sharepointgroup.md) object.

A **sharePointGroup** object is created by invoking this API.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

This API only supports application only permissions.

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Application                            | FileStorageContainer.Selected               |

> [!Note]
> In addition to Microsoft Graph permissions, applications calling this API must at least have the `AddPermissions` container type-level permission on the container type of the corresponding containers. For more information, see [container types](/sharepoint/dev/embedded/concepts/app-concepts/containertypes). To learn more about container type-level permissions, see [SharePoint Embedded authorization](/sharepoint/dev/embedded/concepts/app-concepts/auth#Authorization).

## HTTP request

``` http
POST /storage/fileStorage/containers/{containerId}/sharePointGroups/
```

## Request headers

|Name|Description|
|:---|:---|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body
In the request body, supply the values for the title and description of the **sharePointGroup**

|Property|Type|Description|
|:---|:---|:---|
|title|string|The title of the **sharePointGroup**. The title can't be more than 255 characters long. Required.|
|description|string|A user-visible description of the **sharePointGroup**. Description can't be longer than 512 characters. Optional.|

## Response

If successful, this action returns a `201 Created` response code with a json representation of the created group.

## Example 1: Create a new SharePointGroup that is local to a SharePointEmbedded container

The following example creates a new SharePointGroup under the container identified by `{containerId}`. The title and description of the SharePointGroup are shown in the request body.

### Request

``` http
POST https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups
Content-Type: application/json

{
    "title": "Sample Group",
    "description": "This is a sample description"
}
```

### Response

The following example shows a sample response. The group is successfully created with a newly assigned ID that acts as an identifier.

``` http
HTTP/1.1 201 Created
{
    "@odata.context": "https://contoso.sharepoint.com/_api/v2.1/$metadata#storageContainers('b%21oHTW5i_nhk6psByTjEFuUG6vW5yZJRNDkRSLCcmzK6ZPVcywz3AFT5jpBl1KUcbG')/sharePointGroups/$entity",
    "id" : "4",
    "title": "Sample Group",
    "description": "This is sample description"
}
```