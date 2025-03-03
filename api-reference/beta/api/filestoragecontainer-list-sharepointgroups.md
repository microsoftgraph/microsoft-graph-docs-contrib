---
title: "List sharePointGroup objects"
description: "Get a list of the sharePointGroup objects and their properties."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# List sharePointGroup objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [sharePointGroup](../resources/sharepointgroup.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainer-list-sharepointgroups-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-list-sharepointgroups-permissions.md)]

> [!Note]
> In addition to Microsoft Graph permissions, applications calling this API must at least have the `EnumeratePermissions` container type-level permission on the container type of the corresponding containers. For more information, see [container types](/sharepoint/dev/embedded/concepts/app-concepts/containertypes). To learn more about container type-level permissions, see [SharePoint Embedded authorization](/sharepoint/dev/embedded/concepts/app-concepts/auth#Authorization).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /storage/fileStorage/containers/{fileStorageContainerId}/sharePointGroups
```

## Optional query parameters

This method supports $filter, $orderBy, $top and $skip, and Count OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

> [!Note]
> Only 100 sharePointGroups can be listed in a single request. Use the $top and $skip query parameters to
efficiently retrieve all sharePointGroups in a fileStorageContainer.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [sharePointGroup](../resources/sharepointgroup.md) objects in the response body.

## Example 1: Retrieve all the existing sharePointGroups that are local to a fileStorageContainer
The following example retrieves all the sharePointGroups that are local to a fileStoragecontainer identified by the container ID `b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z`

### Request

``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups
```

### Response

The following example shows a sample response containing the collection of sharePointGroups that exist.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.sharePointGroup",
      "id": "7",
      "title": "sampleTitle1",
      "description": "sampleDescription1"
    },
    {
      "@odata.type": "#microsoft.graph.sharePointGroup",
      "id": "9",
      "title": "sampleTitle2",
      "description": "sampleDescription2"
    }
  ]
}
```

## Example 2: Attempt to retrieve all the existing sharePointGroups that are local to a fileStorageContainer. The fileStorageContainer has no sharePointGroups
The following example attempts to retrieve all the sharePointGroups that are local to a fileStorageContainer identified by the container ID `b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z`. This fileStorageContainer is new and has no sharePointGroups in it.

### Request

``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups
```

### Response

The following example shows a sample response. As there are no sharePointGroups in the fileStorageContainer, the response has an empty list.

``` http
HTTP/1.1 200 OK
{
  "value": []
}
```