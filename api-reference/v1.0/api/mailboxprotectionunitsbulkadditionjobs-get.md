---
title: "Get mailboxProtectionUnitsBulkAdditionJob"
description: "Get a mailboxProtectionUnitsBulkAdditionJob in an Exchange protection policy."
author: "nupurmunda"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 05/22/2025
---

# Get mailboxProtectionUnitsBulkAdditionJob

Namespace: microsoft.graph

Get a [mailboxProtectionUnitsBulkAdditionJob](../resources/mailboxprotectionunitsbulkadditionjob.md) object by the ID associated with an [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "mailboxprotectionunitsbulkadditionjobs_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/mailboxprotectionunitsbulkadditionjobs-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /solutions/backupRestore/exchangeProtectionPolicies/{mailboxProtectionPolicyId}/mailboxProtectionUnitsBulkAdditionJobs/{mailboxProtectionUnitsBulkAdditionJobId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [mailboxProtectionUnitsBulkAdditionJob](../resources/mailboxprotectionunitsbulkadditionjob.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "mailboxprotectionunitsbulkadditionjobs_get"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/solutions/backupRestore/exchangeProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/mailboxProtectionUnitsBulkAdditionJobs/71633878-8321-4950-bfaf-ed285bdd1461
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/mailboxprotectionunitsbulkadditionjobs-get-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/mailboxprotectionunitsbulkadditionjobs-get-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/mailboxprotectionunitsbulkadditionjobs-get-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/mailboxprotectionunitsbulkadditionjobs-get-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/mailboxprotectionunitsbulkadditionjobs-get-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/mailboxprotectionunitsbulkadditionjobs-get-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/mailboxprotectionunitsbulkadditionjobs-get-python-snippets.md)]
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
HTTP/1.1 200 OK
Content-Location: https://graph.microsoft.com/v1.0/solutions/backupRestore/exchangeProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/mailboxProtectionUnitsBulkAdditionJobs/61633878-8321-4950-bfaf-ed285bdd1461

{
   "@odata.type": "#microsoft.graph.mailboxProtectionUnitsBulkAdditionJob",
   "id":"61633878-8321-4950-bfaf-ed285bdd1461",
   "displayName" : "mailboxes-I",
   "mailboxes" : ["amala@contoso.com", "conrad@contoso.com", "lothar@contoso.com"],
   "directoryObjectIds": ["71633878-8321-4950-bfaf-ed285bdd1461"],
    "status" : "CompletedWithErrors",
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
     "error":{
      "code" : "ProtectionResourcesNotFound",
      "message": "Errors while resolving protection resources",
      "details": 
          [
              {
                  "code": "EmailNotFound",
                  "message": "Email address 'amala@contoso.com' not found in directory",
                  "target" : "amala@contoso.com"
              },
              {
                  "code": "EmailNotFound",
                  "message": "Email address 'conrad@contoso.com' not found in directory",
                  "target" : "conrad@contoso.com"
              },
              {
                  "code": "EmailNotFound",
                  "message": "Email address 'lothar@contoso.com' not found in directory",
                  "target" : "lothar@contoso.com"
              }
          ]
      }
}
```
