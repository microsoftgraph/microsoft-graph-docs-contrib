---
title: "List sharePointGroups"
description: "Get a list of the sharePointGroup objects and their properties."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# List sharePointGroups

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [sharePointGroup](../resources/sharepointgroup.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainer-list-sharepointgroups-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-list-sharepointgroups-permissions.md)]

> [!NOTE]
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

This method supports the `$filter`, `$orderBy`, `$top`, `$skip`, and `$count` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

> [!NOTE]
> Only 100 **sharePointGroup** objects can be listed in a single request. Use the `$top` and `$skip` query parameters to efficiently retrieve all **sharePointGroup** objects in a **fileStorageContainer**.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [sharePointGroup](../resources/sharepointgroup.md) objects in the response body.

## Examples

### Example 1: Retrieve all the existing sharePointGroup objects that are local to a fileStorageContainer

The following example retrieves all the **sharePointGroup** objects that are local to a **fileStoragecontainer** identified by the container ID `b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z`.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_sharepointgroups_1"
}-->
``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups
```

#### Response

The following example shows the response that contains the collection of **sharePointGroup** objects available.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.sharePointGroup)"
} -->
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

### Example 2: Attempt to retrieve all the existing sharePointGroup objects that are local to a fileStorageContainer

The following example attempts to retrieve all the **sharePointGroup** objects that are local to a **fileStorageContainer** identified by the container ID `b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z`; however, the **fileStorageContainer** contains no **sharePointGroup** objects.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_sharepointgroups_2"
}-->
``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups
```

#### Response

The following example shows the response. Because no **sharePointGroup** objects exist in the **fileStorageContainer**, the response has an empty list.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.sharePointGroup)"
} -->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": []
}
```
