---
title: "Create siteProtectionUnitsBulkAdditionJob"
description: "Create siteProtectionUnitsBulkAdditionJob for a SharePoint protection policy."
author: "neminbshah"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 10/22/2024
---

# Create siteProtectionUnitsBulkAdditionJob

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [siteProtectionUnitsBulkAdditionJob](../resources/siteprotectionunitsbulkadditionjob.md) object associated with a [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md).

The initial status upon creation of the job is `active`. When all the `siteUrls` and `siteIds` are added into the corresponding SharePoint protection policy, the status of job is `completed`.

If any failures occur, the status of the job is `completedWithErrors`.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "siteprotectionunitsbulkadditionjobs_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/siteprotectionunitsbulkadditionjobs-post-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST   /solutions/backupRestore/sharePointProtectionPolicies/{sharePointProtectionPolicyId}/siteProtectionUnitsBulkAdditionJobs
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json|

## Request body

In the request body, include a JSON representation of the [siteProtectionUnitsBulkAdditionJob](../resources/siteprotectionunitsbulkadditionjob.md) object.

## Response

If successful, this method returns a `201 Created` response code and a [siteProtectionUnitsBulkAdditionJob](../resources/siteprotectionunitsbulkadditionjob.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "siteprotectionunitsbulkadditionjobs_post"
}
-->

```http
POST https://graph.microsoft.com/beta/solutions/backupRestore/sharePointProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/siteProtectionUnitsBulkAdditionJobs 
Content-Type: application/json

{
   "displayName" : "Sites-I",
   "siteWebUrls" : [ "https://contoso.sharepoint.com/test1", "https://contoso.sharepoint.com/test2", "https://contoso.sharepoint.com/test4", "https://contoso.sharepoint.com/test5" ],
   "siteIds" : [ "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee4532", "contoso.sharepoint.com,ab60e844-ba1d-49bc-b4d4-d5e36bae9019,832a596e-90a1-49e3-9b48-bfa80bee4532"]
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/siteprotectionunitsbulkadditionjobs-post-javascript-snippets.md)]
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
```http
HTTP/1.1 201 Created
Content-type: application/json

{
   "@odata.type": "#microsoft.graph.siteProtectionUnitsBulkAdditionJob",
   "id" :"71633878-8321-4950-bfaf-ed285bdd1461",
   "displayName" : "Sites-I",
   "status" : "active",
    "siteWebUrls" : [ "https://contoso.sharepoint.com/test1", "https://contoso.sharepoint.com/test2", "https://contoso.sharepoint.com/test4", "https://contoso.sharepoint.com/test5" ],
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
}
```
