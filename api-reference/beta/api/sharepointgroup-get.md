---
title: "Get sharePointGroup"
description: "Read the properties and relationships of a sharePointGroup object."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# Get sharePointGroup

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [sharePointGroup](../resources/sharepointgroup.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "ignored",
  "name": "sharepointgroup-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sharepointgroup-get-permissions.md)]

| Permission type                        | Least privileged permissions  | Higher privileged permissions |
| :------------------------------------- | :---------------------------- | :---------------------------- |
| Delegated (work or school account)     | Not supported.                | Not supported.                |
| Delegated (personal Microsoft account) | Not supported.                | Not supported.                |
| Application                            | FileStorageContainer.Selected | Not available.                |

> [!Note]
> In addition to Microsoft Graph permissions, applications calling this API must at least have the `EnumeratePermissions` container type-level permission on the container type of the corresponding containers. For more information, see [container types](/sharepoint/dev/embedded/concepts/app-concepts/containertypes). To learn more about container type-level permissions, see [SharePoint Embedded authorization](/sharepoint/dev/embedded/concepts/app-concepts/auth#Authorization).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /storage/fileStorage/containers/{fileStorageContainerId}/sharePointGroups/{sharePointGroupId}
```

## Optional query parameters

This method supports the $expand and $select OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). For the $expand OData query parameter, only the `members` field is eligible. For the $select OData query parameter `title`, `id` and `description` fields are eligible.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [sharePointGroup](../resources/sharepointgroup.md) object in the response body.

## Example 1: Get a sharePointGroup using ID 
The following example retrieves a sharePointGroup identified by `{sharePointGroupId}` that is local to a SharePointEmbedded container identified by `{containerId}`.


### Request

``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups/10
Content-Type: application/json

```

### Response

The following example shows s sample response with a json object representing the sharePointGroup

``` http
HTTP/1.1 200 OK
{
  "@odata.type": "#microsoft.graph.sharePointGroup",
  "id" : "4",
  "title": "Sample Group",
  "description": "This is sample description"
}
```

## Example 2: Attempt to get a sharePointGroup using ID 
The following example attempts to get a sharePointGroup identified by `{sharePointGroupId}` that is local to a SharePointEmbedded container identified by `{containerId}`. There's no such group in the container.

### Request

``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups/12
Content-Type: application/json

```

### Response

The following example shows a sample response detailing the nonexistence of the group.

``` http
HTTP/1.1 404 Not Found
{
  "error": {
    "code": "itemNotFound",
    "message": "Item not found"
  }
}
```