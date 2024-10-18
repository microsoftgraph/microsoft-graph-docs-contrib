---
title: "Get driveProtectionUnitsBulkAdditionJob"
description: "Get a driveProtectionUnitsBulkAdditionJob in a OneDrive protection policy."
author: "neminbshah"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# Get driveProtectionUnitsBulkAdditionJob

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [driveProtectionUnitsBulkAdditionJob](../resources/driveprotectionunitsbulkadditionjob.md) object by the ID associated with a [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "driveprotectionunitsbulkadditionjobs_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/driveprotectionunitsbulkadditionjobs-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /solutions/backupRestore/oneDriveForBusinessProtectionPolicies/{driveProtectionPolicyId}/driveProtectionUnitsBulkAdditionJobs/{driveProtectionUnitsBulkAdditionJobId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [driveProtectionUnitsBulkAdditionJob](../resources/driveprotectionunitsbulkadditionjob.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "driveprotectionunitsbulkadditionjobs_get"
}
-->

``` http
GET https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/driveProtectionUnitsBulkAdditionJobs/71633878-8321-4950-bfaf-ed285bdd1461
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.driveProtectionUnitsBulkAdditionJob"
}
-->

``` http
HTTP/1.1 200 OK
Content-Location: https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/driveProtectionUnitsBulkAdditionJobs/61633878-8321-4950-bfaf-ed285bdd1461

{
   "@odata.type": "#microsoft.graph.driveProtectionUnitsBulkAdditionJob",
   "id":"61633878-8321-4950-bfaf-ed285bdd1461",
   "displayName" : "drives-I",
   "drives" : ["amala@contoso.com", "conrad@contoso.com", "lothar@contoso.com"],
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
