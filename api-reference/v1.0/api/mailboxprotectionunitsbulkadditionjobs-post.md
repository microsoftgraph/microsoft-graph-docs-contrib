---
title: "Create mailboxProtectionUnitsBulkAdditionJob"
description: "Create mailboxProtectionUnitsBulkAdditionJob for an Exchange protection policy."
author: "nupurmunda"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 05/22/2025
---

# Create mailboxProtectionUnitsBulkAdditionJob

Namespace: microsoft.graph

Create a [mailboxProtectionUnitsBulkAdditionJob](../resources/mailboxprotectionunitsbulkadditionjob.md) object associated with an [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md).

The initial status upon creation of the job is `active`. When all the `mailboxes` and `directoryObjectIds` are added into the corresponding Exchange protection policy, the status of job is `completed`.

If any failures occur, the status of the job is `completedWithErrors`.
[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "mailboxprotectionunitsbulkadditionjobs_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/mailboxprotectionunitsbulkadditionjobs-post-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST   /solutions/backupRestore/exchangeProtectionPolicies/{exchangeProtectionPolicyId}/mailboxProtectionUnitsBulkAdditionJobs
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json|

## Request body

In the request body, include a JSON representation of the [mailboxProtectionUnitsBulkAdditionJob](../resources/mailboxprotectionunitsbulkadditionjob.md) object.

## Response

If successful, this method returns a `201 Created` response code and a [mailboxProtectionUnitsBulkAdditionJob](../resources/mailboxprotectionunitsbulkadditionjob.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "mailboxprotectionunitsbulkadditionjobs_post"
}
-->

```http
POST https://graph.microsoft.com/v1.0/solutions/backupRestore/exchangeProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/mailboxProtectionUnitsBulkAdditionJobs 
Content-Type: application/json

{
    "displayName" : "mailboxes-I",
    "mailboxes" : ["amala@contoso.com", "conrad@contoso.com", "lothar@contoso.com"],
    "directoryObjectIds" : ["1fec4e78-bce4-4aaf-ab1b-5451cc387264"]
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/mailboxprotectionunitsbulkadditionjobs-post-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailboxProtectionUnitsBulkAdditionJob"
}
-->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
   "@odata.type": "#microsoft.graph.mailboxProtectionUnitsBulkAdditionJob",
   "id" :"71633878-8321-4950-bfaf-ed285bdd1461",
   "displayName" : "mailboxes-I",
   "status" : "active",
   "mailboxes" : ["amala@contoso.com", "conrad@contoso.com", "lothar@contoso.com"],
   "directoryObjectIds" : ["1fec4e78-bce4-4aaf-ab1b-5451cc387264"],
   "createdBy":{
      "application":{
         "id":"1fec8e78-bce4-4aaf-ab1b-5451cc387264"
      },
      "user":{
         "id":"845457dc-4bb2-4815-bef3-8628ebd1952e"
      }
   },
   "createdDateTime":"2015-06-19T12-01-03.45Z",
   "lastModifiedBy":{
      "application":{
         "id":"1fec8e78-bce4-4aaf-ab1b-5451cc387264"
      },
      "user":{
         "id":"845457dc-4bb2-4815-bef3-8628ebd1952e"
      }
   },
   "lastModifiedDateTime":"2015-06-19T12-01-03.45Z",
}
```
