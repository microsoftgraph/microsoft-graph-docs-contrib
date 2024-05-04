---
title: "Delete recycleBin items"
description: "Delete items from fileStorageContainer recycleBin."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Delete recycle bin items

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Permanently delete [recycleBinItem](../resources/recyclebinitem.md) objects from the [recycleBin](../resources/recyclebin.md) of a [fileStorageContainer](../resources/filestoragecontainer.md). The items deleted by this method cannot be restored.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainer-delete-recyclebin-items-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-delete-recyclebin-items-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /storageContainers/{containerId}/recycleBin/items/delete
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [recycleBinItem](../resources/recyclebinitem.md) objects to delete. 


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_filestoragecontainer_recyclebin_items",
  "@odata.type": Collection("microsoft.graph.recyclebinitem")
}
-->
``` http
POST https://graph.microsoft.com/beta/storageContainers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/recycleBin/items/delete
Content-Type: application/json

{
  "ids": ["5d625d33-338c-4a77-a98a-3e287116440c", "73133853-48f2-4956-bc4a-03f8d1675042"]
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

