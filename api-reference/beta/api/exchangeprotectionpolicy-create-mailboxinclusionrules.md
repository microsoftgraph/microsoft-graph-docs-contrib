---
title: "Create mailboxProtectionRule"
description: "Create a mailbox protection rule for an Exchange protection policy."
author: "tushar20, manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# Create mailboxInclusionRule

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [mailboxProtectionRule](../resources/mailboxprotectionrule.md) in an [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md).

An inclusion rule indicates that a protection policy should contain protection units that match the specified rule criteria. The status of a protection rule on creation is `active`. After the rule is applied, the status is either `completed` or `completedWithErrors`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

|Permission type|Least privileged permission|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|BackupRestore-Configuration.ReadWrite.All|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|BackupRestore-Configuration.ReadWrite.All|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/exchangeProtectionPolicies/{exchangeProtectionPolicyId}/mailboxInclusionRules
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply a JSON representation of the [mailboxInclusionRule](../resources/mailboxprotectionrule.md) object.

You can specifiy the following properties when creating a **mailboxInclusionRule**.

|Property|Type|Description|
|:---|:---|:---|
|mailboxExpression|String|mailboxExpression supports `memberOf` and `group.id` property. Please refer to [example](../resources/mailboxprotectionrule.md#mailboxexpression-examples) for usage details. Required|


## Response

If successful, this method returns a `201 Created` response code and a [mailboxInclusionRule](../resources/mailboxprotectionrule.md) object in the response body.
**mailboxInclusionRule** is a collection of **exchangeProtectionRule** which inherits from [protectionRuleBase](../resources/protectionrulebase.md)

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "exchangeprotectionpolicy-create-mailboxinclusionrules"
}
-->

``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/exchangeProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/mailboxInclusionRules

{
   "mailboxExpression": "(memberOf -any (group.id -in ['f218eb4a-ea72-42bd-8f0b-d0bbf794bec7']))"
}
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
HTTP/1.1 200 OK
Content-Location: https://graph.microsoft.com/beta/solutions/backupRestore/exchangeProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/mailboxInclusionRules('61633878-8321-4950-bfaf-ed285bdd1461')

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
   "mailboxExpression": "(memberOf -any (group.id -in ['f218eb4a-ea72-42bd-8f0b-d0bbf794bec7']))"
}
```
