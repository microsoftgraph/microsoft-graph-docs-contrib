---
title: "Get backupRestoreRoot"
description: "Get the service status of the Microsoft 365 Backup Storage service in a tenant."
author: "maniksingh, tkanaujia"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# Get backupRestoreRoot

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [serviceStatus](../resources/servicestatus.md) of the [Microsoft 365 Backup Storage](../resources/backuprestoreroot.md) service in a tenant.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "backuprestoreroot-get-permissions"
}
-->
<!-- [!INCLUDE [permissions-table](../includes/permissions/backuprestoreroot-get-permissions.md)] -->

|Permission type|Least privileged permission|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|BackupRestore-Control.Read.All|BackupRestore-Control.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|BackupRestore-Control.Read.All|BackupRestore-Control.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [backupRestoreRoot](../resources/backuprestoreroot.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "backuprestoreroot_get"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/backupRestore
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.backupRestoreRoot"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.backupRestoreRoot",
    "id": "b94bcfce-7c03-4c27-29a2-963ed585c396",
    "serviceStatus": [
      {
        "@odata.type": "microsoft.graph.serviceStatus"
      }
    ]
  }
}
```

