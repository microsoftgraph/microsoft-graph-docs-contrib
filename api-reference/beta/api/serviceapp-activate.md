---
title: "serviceApp: activate"
description: "Activate a serviceApp"
author: "tushar20, manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# serviceApp: activate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Activate a [serviceApp](../resources/serviceapp.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "serviceapp-activate-permissions"
}
-->
<!--[!INCLUDE [permissions-table](../includes/permissions/serviceapp-activate-permissions.md)]-->
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
POST /solutions/backupRestore/serviceApps/{serviceAppId}/activate
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply a JSON representation of the [serviceApp](../resources/serviceapp.md).

You can specify the following properties when creating a **serviceApp**.

|Property|Type|Description|
|:---|:---|:---|
|effectiveDateTime|DateTimeOffset|The time to activate the serviceApp.|

## Response

If successful, this action returns a `202 Accepted` response code and a [serviceApp](../resources/serviceapp.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "serviceappthis.activate"
}
-->
``` http
POST /solutions/backupRestore/serviceApps/{71633878-8321-4950-bfaf-ed285bdd1461}/activate
Authorization: Bearer <Access-Token>

{
    "effectiveDateTime": "2024-04-19T12-01-03.45Z"
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.serviceApp"
}
-->
``` http
HTTP/1.1 202 Accepted
Content-Type: application / json
Content-Location: /solutions/backupRestore/serviceApps/71633878-8321-4950-bfaf-ed285bdd1461
Odata-Version: 4.0

{
    "@odata.type": "#microsoft.graph.serviceApp"
    "id":"71633878-8321-4950-bfaf-ed285bdd1461",
    "status" : "pendingActive",
    "registrationDateTime":"2023-06-19T12-01-03.45Z",
    "effectiveDateTime": "2024-04-19T12-01-03.45Z",   
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

