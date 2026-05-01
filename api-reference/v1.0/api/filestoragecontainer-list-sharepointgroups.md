---
title: "List sharePointGroups"
description: "Get a list of the sharePointGroup objects and their properties."
author: "humbertorMSFT"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# List sharePointGroups

Namespace: microsoft.graph

Get a list of [sharePointGroup](../resources/sharepointgroup.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_list_sharepointgroups" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-list-sharepointgroups-permissions.md)]

> [!NOTE]
> In addition to Microsoft Graph permissions, applications calling this API must at least have the `EnumeratePermissions` container type-level permission on the container type of the corresponding containers. For more information, see [container types](/sharepoint/dev/embedded/concepts/app-concepts/containertypes). To learn more about container type-level permissions, see [SharePoint Embedded authorization](/sharepoint/dev/embedded/concepts/app-concepts/auth#authorization).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /storage/fileStorage/containers/{fileStorageContainerId}/sharePointGroups
```

## Optional query parameters

This method supports the `$filter`, `$orderby`, `$top`, `$skip`, and `$count` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

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

The following example retrieves all the **sharePointGroup** objects that are local to a **fileStorageContainer** identified by the container ID `b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z`.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_sharepointgroups_1"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups
```

---

#### Response

The following example shows the response that contains the collection of **sharePointGroup** objects available.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.sharePointGroup)"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.sharePointGroup",
      "id": "ZGYwZTEzYTgtOTExOS00MjdmLWEzNjktOTdjOWM3YjNlYjcyXzE0",
      "title": "sampleTitle1",
      "description": "sampleDescription1",
      "principalId": "7"
    },
    {
      "@odata.type": "#microsoft.graph.sharePointGroup",
      "id": "ZGYwZTEzYTgtOTExOS00PdjfPUHzNjktOTdjOWM3YjNlYjcyOpo8",
      "title": "sampleTitle2",
      "description": "sampleDescription2",
      "principalId": "9"
    }
  ]
}
```

### Example 2: Attempt to retrieve all the existing sharePointGroup objects that are local to a fileStorageContainer

The following example attempts to retrieve all the **sharePointGroup** objects that are local to a **fileStorageContainer** identified by the container ID `b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_6A`; however, the **fileStorageContainer** contains no **sharePointGroup** objects.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_sharepointgroups_2"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_6A/sharePointGroups
```

---

#### Response

The following example shows the response. The response has an empty list, because no **sharePointGroup** objects exist in the **fileStorageContainer**. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.sharePointGroup)"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": []
}
```
