---
title: "Restore deleted fileStorageContainer"
description: "Restore deleted fileStorageContainer."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# fileStorageContainer: restore

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore a [fileStorageContainer](../resources/filestoragecontainer.md) that has been deleted and is currently in the deleted container collection. 

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainer-restore-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-restore-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deletedStorageContainers/{containerId}/restore
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [fileStorageContainer](../resources/filestoragecontainer.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "filestoragecontainerthis.restore"
}
-->
``` http
POST https://graph.microsoft.com/beta/deletedStorageContainers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/restore
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fileStorageContainer"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "microsoft.graph.fileStorageContainer",
  "id": "b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z",
  "displayName": "My Application Storage Container",
  "containerTypeId": "91710488-5756-407f-9046-fbe5f0b4de73",
  "createdDateTime": "2021-11-24T15:41:52.347Z",
  "deletedDateTime": "2022-08-11T12:35:16.300Z"
}
```

