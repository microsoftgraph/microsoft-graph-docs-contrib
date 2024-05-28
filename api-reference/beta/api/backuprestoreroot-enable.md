---
title: "backupRestoreRoot: enable"
description: "Enable the Microsoft 365 Backup Storage service for a tenant."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# backupRestoreRoot: enable

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Enable the [Microsoft 365 Backup Storage](../resources/backuprestoreroot.md) service for a tenant.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

|Permission type|Least privileged permission|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|BackupRestore-Control.ReadWrite.All|Not available.|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|BackupRestore-Control.ReadWrite.All|Not available.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/enable
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply the **appOwnerTenantId** in which this application is registered.

### Properties
|Property|Type|Description|
|:---|:---|:---|
|appOwnerTenantId|`AppOwnerTenantId` in which this application is registered. Required.|

## Response

If successful, this action returns a `200 OK` response code and a [serviceStatus](../resources/servicestatus.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "backuprestoreroot_enable"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/enable

{
    "appOwnerTenantId": "23014d8c-71fe-4d00-a01a-31850bc5b42a"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.serviceStatus"
}
-->
``` http
HTTP/1.1 200 OK

{
    "@odata.type": "#microsoft.graph.serviceStatus",
    "id":"b3177c20-8d60-4a41-8a6f-1715ac41297f",
    "status":"enabled",
    "serviceConsumer":"thirdParty",
    "lastModifiedBy":{
        "application":{
            "id":"1fec8e78-bce4-4aaf-ab1b-5451cc387264"
        },
        "user":{
            "id":"845457dc-4bb2-4815-bef3-8628ebd1952e"
        }
    },
    "lastModifiedDateTime":"2023-06-19T12-01-03.45Z"
}
```

