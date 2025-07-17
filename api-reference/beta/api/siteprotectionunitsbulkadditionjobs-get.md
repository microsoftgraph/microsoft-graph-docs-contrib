---
title: "Get siteProtectionUnitsBulkAdditionJob"
description: "Get a siteProtectionUnitsBulkAdditionJob in a SharePoint protection policy."
author: "neminbshah"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 10/22/2024
---

# Get siteProtectionUnitsBulkAdditionJob

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [siteProtectionUnitsBulkAdditionJob](../resources/siteprotectionunitsbulkadditionjob.md) object by the ID associated with a [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "siteprotectionunitsbulkadditionjobs_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/siteprotectionunitsbulkadditionjobs-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/sharePointProtectionPolicies/{sharePointProtectionPolicyId}/siteProtectionUnitsBulkAdditionJobs/{siteProtectionUnitsBulkAdditionJobId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [siteProtectionUnitsBulkAdditionJob](../resources/siteprotectionunitsbulkadditionjob.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "siteprotectionunitsbulkadditionjobs_get"
}
-->

``` http
GET https://graph.microsoft.com/beta/solutions/backupRestore/sharePointProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/siteProtectionUnitsBulkAdditionJobs/71633878-8321-4950-bfaf-ed285bdd1461
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/siteprotectionunitsbulkadditionjobs-get-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/siteprotectionunitsbulkadditionjobs-get-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/siteprotectionunitsbulkadditionjobs-get-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/siteprotectionunitsbulkadditionjobs-get-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/siteprotectionunitsbulkadditionjobs-get-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/siteprotectionunitsbulkadditionjobs-get-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/siteprotectionunitsbulkadditionjobs-get-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/siteprotectionunitsbulkadditionjobs-get-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.siteProtectionUnitsBulkAdditionJob"
}
-->

``` http
HTTP/1.1 200 OK
Content-Location: https://graph.microsoft.com/beta/solutions/backupRestore/sharePointProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/siteProtectionUnitsBulkAdditionJobs/61633878-8321-4950-bfaf-ed285bdd1461

{
   "@odata.type": "#microsoft.graph.siteProtectionUnitsBulkAdditionJob",
   "id":"61633878-8321-4950-bfaf-ed285bdd1461",
   "displayName" : "Sites-I",
   "status" : "completedWithErrors",
    "siteWebUrls":  [ "https://contoso1@sharepoint.com", "https://contoso2@sharepoint.com", "https://contoso3@sharepoint.com", "https://contoso4@sharepoint.com", "https://testSite1.sharepoint.com", "https://testSite2.sharepoint.com", "https://testSite3.sharepoint.com" ],
    "siteIds" : [ "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee4532", "contoso.sharepoint.com,ab60e844-ba1d-49bc-b4d4-d5e36bae9019,832a596e-90a1-49e3-9b48-bfa80bee4532"],
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
    "details": 
        [
            {
                "code": "SiteUrlNotFound",
                "message": "Site Url 'https://testSite1.sharepoint.com' could not be resolved"
            },
            {
                "code": "SiteUrlNotFound",
                "message": "Site Url 'https://testSite2.sharepoint.com' could not be resolved"
            },
            {
                "code": "SiteUrlNotFound",
                "message": "Site Url 'https://testSite3.sharepoint.com' could not be resolved"
            }
        ]   
    }       
}
```
