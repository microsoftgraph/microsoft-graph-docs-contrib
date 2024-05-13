---
title: "Create driveInclusionRules"
description: "Create driveInclusionRules for a OneDriveForBusinessProtectionPolicy"
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# Get driveProtectionRule

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [driveProtectionRule](../resources/driveprotectionrule.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onedriveforbusinessprotectionpolicy-create-driveinclusionrules-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/onedriveforbusinessprotectionpolicy-create-driveinclusionrules-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/oneDriveForBusinessProtectionPolicies/{oneDriveForBusinessProtectionPolicyId}/driveInclusionRules
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply a JSON representation of the [driveProtectionRule](../resources/driveprotectionrule.md).

## Response

If successful, this method returns a `201 Created` response code and a [driveProtectionRule](../resources/driveprotectionrule.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_onedriveforbusinessprotectionpolicy_driveinclusionrule"
}
-->
``` http
POST /solutions/backupRestore/oneDriveForBusinessProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/driveInclusionRules 
Content-Type: application/json
Application: application/json
Odata-Version: 4.0
Authorization: Bearer <Access-Token>

{
    "userExpression": "(memberOf -any (group.id -in ['c318eb4a-ea72-42bd-8f0b-d0bbf794bec7']))"
}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.backupRestore.driveProtectionRule"
}
-->
``` http
201 Created
Content-Location: /solutions/backupRestore/oneDriveForBusinessProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/driveInclusionRules('61633878-8321-4950-bfaf-ed285bdd1461')

{
   "@odata.type": "#microsoft.graph.userDriveProtectionRule",
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
   "userExpression": "(memberOf -any (group.id -in ['c318eb4a-ea72-42bd-8f0b-d0bbf794bec7']))"
}
```
