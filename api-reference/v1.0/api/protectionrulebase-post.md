---
title: "Create protectionRuleBase"
description: "Create a protection rule associated with a protection policy."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 10/08/2024
---

# Create protectionRuleBase

Namespace: microsoft.graph

Create a new [protection rule](../resources/protectionrulebase.md) associated with a [protection policy](../resources/protectionpolicybase.md). You can use this method to create a [mailboxProtectionRule](../resources/mailboxprotectionrule.md), [driveProtectionRule](../resources/driveprotectionrule.md), or [siteProtectionRule](../resources/siteprotectionrule.md).

An inclusion rule indicates that a protection policy should contain protection units that match the specified rule criteria. The initial status of a protection rule upon creation is `active`. After the rule is applied, the state is either `completed` or `completedWithErrors`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "protectionrulebase_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/protectionrulebase-post-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /solutions/backupRestore/sharePointProtectionPolicies/{sharePointProtectionPolicyId}/siteInclusionRules
POST /solutions/backupRestore/oneDriveForBusinessProtectionPolicies/{oneDriveForBusinessProtectionPolicyId}/driveInclusionRules
POST /solutions/backupRestore/exchangeProtectionPolicies/{exchangeProtectionPolicyId}/mailboxInclusionRules
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply a JSON representation of the [protectionRuleBase](../resources/protectionRuleBase.md) object.

### Properties to create a new siteInclusionRule

You can specify the following properties when you create a **siteInclusionRule**.

|Property|Type|Description|
|:---|:---|:---|
|siteExpression|String|Contains the [site expression](../resources/siteprotectionrule.md#siteexpression-examples). Required.|

### Properties to create a new driveInclusionRule

You can specify the following properties when you create a **driveInclusionRule**.

|Property|Type|Description|
|:---|:---|:---|
|driveExpression|String|Contains the [drive expression](../resources/driveprotectionrule.md#driveexpression-examples). Required.|

### Properties to create a new mailboxInclusionRule

You can specify the following properties when you create a **mailboxInclusionRule**.

|Property|Type|Description|
|:---|:---|:---|
|mailboxExpression|String|Contains the [mailbox expression](../resources/mailboxprotectionrule.md#mailboxexpression-examples). Supports `memberOf` and `group.id` properties. Required|

## Response

If successful, this method returns a `201 Created` response code and a [protectionRuleBase](../resources/protectionRuleBase.md) object in the response body.

For a list of possible error responses, see [Backup Storage API error responses](/graph/backup-storage-error-codes).

## Examples

### Example 1: Create a new siteInclusionRule associated with a SharePoint protection policy

The following example shows how to create a new **siteInclusionRule** associated with a [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md).

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "sharepointprotectionpolicy_create_siteinclusionrules"
}
-->
```http
POST https://graph.microsoft.com/v1.0/solutions/backupRestore/sharePointProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/siteInclusionRules 
Content-Type: application/json

{
    "siteExpression": "((displayName -contains 'Finance')  -or  (displayName -contains 'Legal'))"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/sharepointprotectionpolicy-create-siteinclusionrules-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.siteProtectionRule"
}
-->
```http
HTTP/1.1 201 Created
Content-Location: https://graph.microsoft.com/v1.0/solutions/backupRestore/sharePointProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/siteInclusionRules('61633878-8321-4950-bfaf-ed285bdd1461')

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
   "createdDateTime":"2015-06-19T12:01:03.45Z",
   "lastModifiedBy":{
      "application":{
         "id":"1fec8e78-bce4-4aaf-ab1b-5451cc387264"
      },
      "user":{
         "id":"845457dc-4bb2-4815-bef3-8628ebd1952e"
      }
   },
   "lastModifiedDateTime":"2015-06-19T12:01:03.45Z",
   "isAutoApplyEnabled": false,
   "siteExpression": "((displayName -contains 'Finance')  -or  (displayName -contains 'Legal'))"
}
```

### Example 2: Create a new driveInclusionRule associated with a OneDriveForBusiness protection policy

The following example shows how to create a new **driveInclusionRule** associated with a [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "onedriveforbusinessprotectionpolicy_create_driveinclusionrules"
}
-->
```http
POST https://graph.microsoft.com/v1.0/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/driveInclusionRules 
Content-Type: application/json

{
    "driveExpression": "(memberOf -any (group.id -in ['c318eb4a-ea72-42bd-8f0b-d0bbf794bec7']))"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/onedriveforbusinessprotectionpolicy-create-driveinclusionrules-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.driveProtectionRule"
}
-->
```http
HTTP/1.1 201 Created
Content-Location: https://graph.microsoft.com/v1.0/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/driveInclusionRules('61633878-8321-4950-bfaf-ed285bdd1461')

{
   "@odata.type": "#microsoft.graph.driveProtectionRule",
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
   "createdDateTime":"2015-06-19T12:01:03.45Z",
   "lastModifiedBy":{
      "application":{
         "id":"1fec8e78-bce4-4aaf-ab1b-5451cc387264"
      },
      "user":{
         "id":"845457dc-4bb2-4815-bef3-8628ebd1952e"
      }
   },
   "lastModifiedDateTime":"2015-06-19T12:01:03.45Z",
   "isAutoApplyEnabled": false,
   "driveExpression": "(memberOf -any (group.id -in ['c318eb4a-ea72-42bd-8f0b-d0bbf794bec7']))"
}
```

### Example 3: Create a new mailboxInclusionRule associated with an Exchange protection policy

The following example shows how to create a new **mailboxInclusionRule** associated with an [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md).

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "exchangeprotectionpolicy-create-mailboxinclusionrules"
}
-->

```http
POST https://graph.microsoft.com/v1.0/solutions/backupRestore/exchangeProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/mailboxInclusionRules

{
   "mailboxExpression": "(memberOf -any (group.id -in ['f218eb4a-ea72-42bd-8f0b-d0bbf794bec7']))"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/exchangeprotectionpolicy-create-mailboxinclusionrules-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailboxProtectionRule"
}
-->
```http
HTTP/1.1 200 OK
Content-Location: https://graph.microsoft.com/v1.0/solutions/backupRestore/exchangeProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/mailboxInclusionRules('61633878-8321-4950-bfaf-ed285bdd1461')

{
   "@odata.type": "#microsoft.graph.mailboxProtectionRule",
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
   "createdDateTime":"2015-06-19T12:01:03.45Z",
   "lastModifiedBy":{
      "application":{
         "id":"1fec8e78-bce4-4aaf-ab1b-5451cc387264"
      },
      "user":{
         "id":"845457dc-4bb2-4815-bef3-8628ebd1952e"
      }
   },
   "lastModifiedDateTime":"2015-06-19T12:01:03.45Z",
   "isAutoApplyEnabled": false,
   "mailboxExpression": "(memberOf -any (group.id -in ['f218eb4a-ea72-42bd-8f0b-d0bbf794bec7']))"
}
```
