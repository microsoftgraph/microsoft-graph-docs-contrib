---
title: "protectionPolicyBase: deactivate"
description: "Deactivate a protection policy"
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# protectionPolicyBase: deactivate

Namespace: microsoft.graph

Deactivate a [protectionPolicyBase](../resources/protectionpolicybase.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "protectionpolicybase_deactivate" } -->
[!INCLUDE [permissions-table](../includes/permissions/protectionpolicybase-deactivate-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/protectionPolicies/{protectionPolicyBaseId}/deactivate
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `202 Accepted` response code and a [protectionPolicyBase](../resources/protectionpolicybase.md) object in the response body.

## Examples

### Example 1: Deactivate an active protection policy

Deactivating the protection policy when it is in active state.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "protectionpolicybase_deactivate_example_1"
}
-->

``` http
POST https://graph.microsoft.com/v1.0/solutions/backupRestore/ProtectionPolicies/61633878-8321-4950-bfaf-ed285bdd1461/deactivate
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.protectionPolicyBase"
}
-->
``` http
HTTP/1.1 202 Accepted
Content-Location: https://graph.microsoft.com/v1.0/solutions/backupRestore/protectionPolicies('61633878-8321-4950-bfaf-ed285bdd1461')

{
   "@odata.context":"/solutions/backupRestore/$metadata#ProtectionPolicies/$entity",
   "@odata.id":"/solutions/backupRestore/ProtectionPolicies(61633878-8321-4950-bfaf-ed285bdd1461)",
   "@odata.type": "#microsoft.graph.exchangeProtectionPolicy",
   "id":"61633878-8321-4950-bfaf-ed285bdd1461",
   "displayName":"Exchange Protection Policy",
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
   "createdDateTime":"2015-06-19T12:01:03.45Z",
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
   "lastModifiedDateTime":"2015-06-19T12:01:03.45Z",
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

### Example 2 : Deactivate a protection policy in updating state

Deactivating the protection policy when it is in updating state.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "protectionpolicybase_deactivate_example_2"
}
-->

``` http
POST https://graph.microsoft.com/v1.0/solutions/backupRestore/protectionPolicies/61633878-8321-4950-bfaf-ed285bdd1461/deactivate
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.publicError"
}
-->

``` http
HTTP/1.1 400 Bad Request
Content-Location: https://graph.microsoft.com/v1.0/solutions/backupRestore/ProtectionPolicies/61633878-8321-4950-bfaf-ed285bdd1461

{
  "error": {
    "code": "invalidStateForActivation",
    "message": "Policy in updating state, which is invalid for deactivation. Policy must be in Active or ActiveWithErrors state.",
    "innerError": {
      "date": "2023-03-03T07:15:31",
      "request-id": "7e921b55-8af4-41f5-881d-d425af822be0",
      "client-request-id": "77d27e8a-f18e-ce3a-42c9-f8a87fc00126"
    }
  }
}
```
