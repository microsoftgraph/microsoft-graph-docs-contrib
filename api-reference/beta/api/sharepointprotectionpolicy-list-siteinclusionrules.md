---
title: "List siteInclusionRules"
description: "List Site Inclusion Rules in a SharePoint Protection Policy."
author: "tushar20, manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# List siteInclusionRules

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List [siteProtectionRule](../resources/siteprotectionrule.md) in a [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md).

An inclusion rule indicates that Protection Policy should contain Protection Units that match the specified rule criteria. The initial status of a Protection Rule upon creation is active, and the terminal states are completed, completedWithErrors once the rule has been applied.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sharepointprotectionpolicy-list-siteinclusionrules-permissions"
}
-->
<!--[!INCLUDE [permissions-table](../includes/permissions/sharepointprotectionpolicy-list-siteinclusionrules-permissions.md)]-->
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
GET /solutions/backupRestore/sharePointProtectionPolicies/{sharePointProtectionPolicyId}/siteInclusionRules
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [siteProtectionRule](../resources/siteprotectionrule.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "sharepointprotectionpolicy_list_siteinclusionrule"
}
-->
``` http
GET /solutions/backupRestore/sharePointProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/siteInclusionRules
Content-Type: application/json
Application: application/json
Odata-Version: 4.0
Authorization: Bearer <Access-Token>
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailboxProtectionRule"
}
-->
``` http
200 OK
Content-Location: /solutions/backupRestore/sharePointProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/siteInclusionRules

{
  "@odata.context": "/solutions/backupRestore/sharePointProtectionPolicies('71633878-8321-4950-bfaf-ed285bdd1461')/siteInclusionRules",
  "@odata.nextLink": "/solutions/backupRestore/sharePointProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/siteInclusionRules?$skiptoken=M2UyZDAwMDAwMDMxMzkzYTMyNjQ2MTM0NjMzMjM5NjYzNjY0MzczMDM0MzE2NTYzNjEzNzMwNjIzNjMzMzg2MjM0MzM2NDM0MzUzNDMzMzc0MDc0Njg3MjY1NjE2NDJlNzYzMjAxZThmYjY4M2Y3ODAxMDAwMDg4NjA5ODdhNzgwMTAwMDB8MTYxNjk2NDUwOTgzMg%3d%3d",
  "values":
   [
      {
         "@odata.type": "#microsoft.graph.siteProtectionRule",
         "id":"61633878-8321-4950-bfaf-ed285bdd1461",
         "status" : "active",
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
         "isAutoApplyEnabled": false,
         "siteExpression": "((webUrl -contains 'Finance')  -or  (webUrl -contains 'Legal'))"
      },
      {
         "@odata.type": "#microsoft.graph.siteProtectionRule",
         "id":"61633878-8321-4950-bfaf-ed285bdd1462",
         "status" : "completed",
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
         "isAutoApplyEnabled": false,
         "siteExpression": "((displayName -contains 'Finance')  -or  (webUrl -contains 'Finance'))"
      }
   ]
}
```
