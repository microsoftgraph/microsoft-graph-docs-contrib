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

Get a list of the sharePointGroup objects and their properties.


## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "ignored",
  "name": "filestoragecontainer-list-sharepointgroups-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-list-sharepointgroups-permissions.md)]

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
GET /storage/fileStorage/containers/{fileStorageContainerId}/sharePointGroups
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [sharePointGroup](../resources/sharepointgroup.md) objects in the response body.

## Example 1: Retrieve all the existing SharePointGroups that are local to a container
The following example retrieves all the SharePointGroups that are local to the SharePointEmbedded container identified by `{containerId}`.

### Request

``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups
Content-Type: application/json

```

### Response

The following example shows the response with a collection of SharePointGroups.

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

## Example 2: Attempt to retrieve all the existing SharePointGroups that are local to a container. The container has no SharePointGroups
The following example attempts to retrieve all the SharePointGroups that are local to the SharePointEmbedded container identified by `{containerId}`. This container is new and has no SharePointGroups in it.

### Request

``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups
Content-Type: application/json

```

### Response

The following example shows the response. Since there aren't any SharePointGroups in the container, the response contains an empty list.

``` http
HTTP/1.1 200 OK
{
  "value": []
}
```