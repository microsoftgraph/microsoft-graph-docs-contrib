---
title: "Create siteInclusionRules"
description: "Create Site Inclusion Rules in a SharePoint Protection Policy."
author: "tushar20, manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# Create siteInclusionRules

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [siteInclusionRule](../resources/siteprotectionrule.md) in a [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md).
An inclusion rule indicates that Protection Policy should contain Protection Units that match the specified rule criteria. The initial status of a Protection Rule upon creation is active, and the terminal states are completed, completedWithErrors once the rule has been applied.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sharepointprotectionpolicy-create-siteinclusionrule-permissions"
}
-->
<!-- [!INCLUDE [permissions-table](../includes/permissions/sharepointprotectionpolicy-create-siteinclusionrule-permissions.md)] -->

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
POST /solutions/backupRestore/sharePointProtectionPolicies/{sharePointProtectionPolicyId}/siteInclusionRules
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply a JSON representation of the [siteProtectionRule](../resources/siteprotectionrule.md) object.

## Response

If successful, this method returns a `201 Created` response code and a [siteProtectionRule](../resources/siteprotectionrule.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "sharepointprotectionpolicy_create_siteinclusionrules"
}
-->
``` http
POST /solutions/backupRestore/sharePointProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/siteInclusionRules 
Content-Type: application/json
Application: application/json
Odata-Version: 4.0
Authorization: Bearer <Access-Token>

{
    "siteExpression": "((displayName -contains 'Finance')  -or  (displayName -contains 'Legal'))"
}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.backupRestore.siteProtectionRule"
}
-->
``` http
HTTP/1.1 201 Created
Content-Location: /solutions/backupRestore/sharePointProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/siteInclusionRules('61633878-8321-4950-bfaf-ed285bdd1461')

{
   "@odata.type": "#microsoft.backupRestore.siteProtectionRule",
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
   "siteExpression": "((displayName -contains 'Finance')  -or  (displayName -contains 'Legal'))"
}
```
