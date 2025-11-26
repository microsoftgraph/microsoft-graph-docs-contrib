---
title: "Restore recycleBinItem"
description: "Restore recycleBinItem to a fileStorageContainer."
author: "harmoneddie"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 12/10/2024
---

# recycleBinItem: restore

Namespace: microsoft.graph

Restore [recycleBinItem](../resources/recyclebinitem.md) objects from the [recycleBin](../resources/recyclebin.md) of a [fileStorageContainer](../resources/filestoragecontainer.md). 

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_restore_recyclebinitem" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-restore-recyclebinitem-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /storage/fileStorage/containers/{containerId}/recycleBin/items/restore
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [recycleBinItem](../resources/recyclebinitem.md) objects to restore.

## Response

If successful, this method returns a `207 Multi-Status` response code and the set of restored [recycleBinItem](../resources/recyclebinitem.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "restore_filestoragecontainer_recyclebinitem1",
  "@odata.type": "Collection(microsoft.graph.recycleBinItem)"
}
-->

``` http
POST  https://graph.microsoft.com/v1.0/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/recycleBin/items/restore
Content-Type: application/json

{
  "ids": ["5d625d33-338c-4a77-a98a-3e287116440c", "73133853-48f2-4956-bc4a-03f8d1675042"]
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/restore-filestoragecontainer-recyclebinitem1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.recycleBinItem)"
}
-->

``` http
HTTP/1.1 207 Multi-Status
Content-Type: application/json

{
  "value": [
    {
      "id": "5d625d33-338c-4a77-a98a-3e287116440c"
    },
    {
      "id": "73133853-48f2-4956-bc4a-03f8d1675042"
    }
  ]
}
```
