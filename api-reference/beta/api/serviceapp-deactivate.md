---
title: "serviceApp: deactivate"
description: "Deactivate a serviceApp"
author: "tkanaujia"
ms.reviewer: "maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# serviceApp: deactivate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Deactivate a [serviceApp](../resources/serviceapp.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

|Permission type|Least privileged permission|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|BackupRestore-Control.ReadWrite.All|Not available.|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|Not supported.|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/serviceApps/{serviceAppId}/deactivate
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `202 Accepted` response code and a [serviceApp](../resources/serviceapp.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "serviceapp_deactivate"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/serviceApps/71633878-8321-4950-bfaf-ed285bdd1461/deactivate
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.serviceApp"
}
-->
``` http
HTTP/1.1 202 Accepted
Content-Location: /solutions/backupRestore/serviceApps/71633878-8321-4950-bfaf-ed285bdd1461

{
    "@odata.type": "#microsoft.graph.serviceApp",
    "id":"71633878-8321-4950-bfaf-ed285bdd1461",
    "status" : "inactive",
    "registrationDateTime":"2023-06-19T12-01-03.45Z",   
    "lastModifiedDateTime":"2023-06-19T12-01-03.45Z",
    "lastModifiedBy":{
        "application":{
            "id":"1fec8e78-bce4-4aaf-ab1b-5451cc387264"
        },
        "user":{
            "id":"845457dc-4bb2-4815-bef3-8628ebd1952e"
        }
    }
}
```
