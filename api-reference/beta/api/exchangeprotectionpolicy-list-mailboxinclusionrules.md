---
title: "List mailboxInclusionRules"
description: "List mailbox inclusion rules for an Exchange protection policy."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 08/03/2024
---

# List mailboxInclusionRules

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [mailboxProtectionRule](../resources/mailboxprotectionrule.md) objects associated with an [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md).

An inclusion rule indicates that a protection policy should contain protection units that match the specified rule criteria. The initial status of a protection rule upon creation is `active`. After the rule is applied, the state is either `completed` or `completedWithErrors`.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "exchangeprotectionpolicy_list_mailboxinclusionrules" } -->
[!INCLUDE [permissions-table](../includes/permissions/exchangeprotectionpolicy-list-mailboxinclusionrules-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/exchangeProtectionPolicies/{exchangeProtectionPolicyId}/mailboxInclusionRules
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [mailboxProtectionRule](../resources/mailboxprotectionrule.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "exchangeprotectionpolicy_list_mailboxinclusionrule"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/backupRestore/exchangeProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/mailboxInclusionRules
Authorization: Bearer <Access-Token>
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/exchangeprotectionpolicy-list-mailboxinclusionrule-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/exchangeprotectionpolicy-list-mailboxinclusionrule-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/exchangeprotectionpolicy-list-mailboxinclusionrule-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/exchangeprotectionpolicy-list-mailboxinclusionrule-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/exchangeprotectionpolicy-list-mailboxinclusionrule-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/exchangeprotectionpolicy-list-mailboxinclusionrule-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/exchangeprotectionpolicy-list-mailboxinclusionrule-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.mailboxProtectionRule)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Location: https://graph.microsoft.com/beta/solutions/backupRestore/exchangeProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/mailboxInclusionRules

{
   "@odata.context": "/solutions/backupRestore/exchangeProtectionPolicies('71633878-8321-4950-bfaf-ed285bdd1461')/mailboxInclusionRules",
   "@odata.nextLink": "/solutions/backupRestore/exchangeProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/mailboxInclusionRules?$skiptoken=M2UyZDAwMDAwMDMxMzkzYTMyNjQ2MTM0NjMzMjM5NjYzNjY0MzczMDM0MzE2NTYzNjEzNzMwNjIzNjMzMzg2MjM0MzM2NDM0MzUzNDMzMzc0MDc0Njg3MjY1NjE2NDJlNzYzMjAxZThmYjY4M2Y3ODAxMDAwMDg4NjA5ODdhNzgwMTAwMDB8MTYxNjk2NDUwOTgzMg%3d%3d",
   "value":
   [
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
         "mailboxExpression": "(memberOf -any (group.id -in ['b418eb4a-ea72-42bd-8f0b-d0bbf794bec7']))"
      },
      {
         "@odata.type": "#microsoft.graph.mailboxProtectionRule",
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
         "mailboxExpression": "(memberOf -any (group.id -in ['b418eb4a-ea72-42bd-8f0b-d0bbf794bec7']))"
      }
   ]
}
```
