---
title: "List driveProtectionUnitsBulkAdditionJobs"
description: "List driveProtectionUnitsBulkAdditionJobs in a OneDrive protection policy."
author: "nupurmunda"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 05/22/2025
---

# List driveProtectionUnitsBulkAdditionJobs 

Namespace: microsoft.graph

Get a list of [driveProtectionUnitsBulkAdditionJobs](../resources/driveprotectionunitsbulkadditionjob.md) objects associated with a [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "onedriveforbusinessprotectionpolicy_list_driveprotectionunitsbulkadditionjobs" } -->
[!INCLUDE [permissions-table](../includes/permissions/onedriveforbusinessprotectionpolicy-list-driveprotectionunitsbulkadditionjobs-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /solutions/backupRestore/oneDriveForBusinessProtectionPolicies/{oneDriveForBusinessProtectionPolicyId}/driveProtectionUnitsBulkAdditionJobs
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a list of [driveProtectionUnitsBulkAdditionJob](../resources/driveprotectionunitsbulkadditionjob.md) objects in the response body. 
The `drives` and `directoryObjectIds` fields are omitted from the response body in order to limit the response size.  

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "onedriveforbusinessprotectionpolicy_list_driveprotectionunitsbulkadditionjobs"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/driveProtectionUnitsBulkAdditionJobs
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/onedriveforbusinessprotectionpolicy-list-driveprotectionunitsbulkadditionjobs-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/onedriveforbusinessprotectionpolicy-list-driveprotectionunitsbulkadditionjobs-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/onedriveforbusinessprotectionpolicy-list-driveprotectionunitsbulkadditionjobs-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/onedriveforbusinessprotectionpolicy-list-driveprotectionunitsbulkadditionjobs-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/onedriveforbusinessprotectionpolicy-list-driveprotectionunitsbulkadditionjobs-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/onedriveforbusinessprotectionpolicy-list-driveprotectionunitsbulkadditionjobs-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/onedriveforbusinessprotectionpolicy-list-driveprotectionunitsbulkadditionjobs-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.driveProtectionUnitsBulkAdditionJob)"
}
-->
```http
HTTP/1.1 200 OK
Content-Location: https://graph.microsoft.com/v1.0/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/driveProtectionUnitsBulkAdditionJobs

{
   "@odata.type": "#collection(microsoft.graph.driveProtectionUnitsBulkAdditionJob)",
   "@odata.context": "/solutions/backupRestore/oneDriveForBusinessProtectionPolicies('71633878-8321-4950-bfaf-ed285bdd1461')/driveProtectionUnitsBulkAdditionJobs",
   "@odata.nextLink": "/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/driveProtectionUnitsBulkAdditionJobs?$top=3&$skiptoken=M2UyZDAwMDAwMDMxMzkzYTMyNjQ2MTM0NjMzMjM5NjYzNjY0MzczMDM0MzE2NTYzNjEzNzMwNjIzNjMzMzg2MjM0MzM2NDM0MzUzNDMzMzc0MDc0Njg3MjY1NjE2NDJlNzYzMjAxZThmYjY4M2Y3ODAxMDAwMDg4NjA5ODdhNzgwMTAwMDB8MTYxNjk2NDUwOTgzMg%3d%3d",
   "value":
   [
      {
         "@odata.type": "#microsoft.graph.driveProtectionUnitsBulkAdditionJob",
         "displayName" : "drive-I",
         "id":"61633878-8321-4950-bfaf-ed285bdd1461",
         "status" : "Completed",
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
         "lastModifiedDateTime":"2015-06-19T12-01-03.45Z"
      },
      {
         "@odata.type": "#microsoft.graph.driveProtectionUnitsBulkAdditionJob",
         "id":"61633878-8321-4950-bfaf-ed285bdd1461",
         "displayName" : "drive-II",
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
                      "message": "Email address 'test1@microsoft.com' not found in directory",
                      "target" : "test1@microsoft.com"
                  },
                  {
                      "code": "EmailNotFound",
                      "message": "Email address 'test2@microsoft.com' not found in directory",
                      "target" : "test2@microsoft.com"
                  },
                  {
                      "code": "EmailNotFound",
                      "message": "Email address 'test3@microsoft.com' not found in directory",
                      "target" : "test3@microsoft.com"
                  }
              ]   
          }
      }
   ]
}
```
