---
title: "Get protectionPolicyBase"
description: "Get a Protection Policy by ID."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storge"
doc_type: apiPageType
---
# Get protectionPolicyBase

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a Protection Policy by ID. Read the properties and relationships of a [protectionPolicyBase](../resources/protectionpolicybase.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

|Permission type|Least privileged permission|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|BackupRestore-Configuration.Read.All|BackupRestore-Configuration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|BackupRestore-Configuration.Read.All|BackupRestore-Configuration.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/protectionPolicies/{protectionPolicyBaseId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [protectionPolicyBase](../resources/protectionpolicybase.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "protectionpolicybase_get"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/backupRestore/ProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e
Authorization: Bearer <Access-Token>
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.exchangeProtectionPolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Location: https://graph.microsoft.com/beta/solutions/backupRestore/ProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e

{
   "@odata.context":"/solutions/backupRestore/$metadata#ProtectionPolicies/$entity",
   "@odata.id":"/solutions/backupRestore/ProtectionPolicies(845457dc-4bb2-4815-bef3-8628ebd1952e)",
   "@odata.type": "#microsoft.graph.exchangeProtectionPolicy",
   "id":"845457dc-4bb2-4815-bef3-8628ebd1952e",
   "displayName":"Exchange Protection",
   "status":"updating",
   "createdBy":{
      "application":{
         "id":"1fec8e78-bce4-4aaf-ab1b-5451cc387264",
         "displayName":"Microsoft Enhanced Restore"
      },
      "user":{
         "email":"ryan@contoso.com",
         "id":"845457dc-4bb2-4815-bef3-8628ebd1952e",
         "displayName":"Ryan"
      }
   },
   "createdDateTime":"2015-06-19T12-01-03.45Z",
   "lastModifiedBy":{
      "application":{
         "id":"1fec8e78-bce4-4aaf-ab1b-5451cc387264",
         "displayName":"Microsoft Enhanced Restore"
      },
      "user":{
         "email":"rian@contoso.com",
         "id":"845457dc-4bb2-4815-bef3-8628ebd1952e",
         "displayName":"Rian"
      }
   },
   "lastModifiedDateTime":"2015-06-19T12-01-03.45Z",
   "retentionSettings" : [
      {
          "interval": "R/PT10M",
          "period": "P2W"
      },
      {
          "interval": "R/P1W",
          "period": "P1Y"
      }
   ]
}
```
