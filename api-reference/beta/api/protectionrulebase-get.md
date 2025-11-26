---
title: "Get protectionRuleBase"
description: "Get a protection rule associated with a protection policy."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 08/03/2024
---

# Get protectionRuleBase

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [protection rule](../resources/protectionrulebase.md) that's associated with a [protection policy](../resources/protectionpolicybase.md). You can use this operation to get [mailbox](../resources/mailboxprotectionrule.md), [drive](../resources/driveprotectionrule.md), and [site](../resources/siteprotectionrule.md) protection rules.

An inclusion rule indicates that a protection policy should contain protection units that match the specified rule criteria. The initial status of a protection rule upon creation is `active`. After the rule is applied, the state is either `completed` or `completedWithErrors`.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "protectionrulebase_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/protectionrulebase-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /solutions/backupRestore/sharePointProtectionPolicies/{sharePointProtectionPolicyId}/siteInclusionRules/{siteProtectionRuleId}
GET /solutions/backupRestore/oneDriveForBusinessProtectionPolicies/{oneDriveForBusinessProtectionPolicyId}/driveInclusionRules/{driveProtectionRuleId}
GET /solutions/backupRestore/exchangeProtectionPolicies/{exchangeProtectionPolicyId}/mailboxInclusionRules/{mailboxProtectionRuleId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [protectionRuleBase](../resources/protectionrulebase.md) object in the response body.

## Examples

### Example 1: Get siteInclusionRule associated with a SharePoint protection policy

The following example shows how to get a **siteInclusionRule** associated with a [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md).

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "sharepointprotectionpolicy_get_siteinclusionrules"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/solutions/backupRestore/sharePointProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/siteInclusionRules/61633878-8321-4950-bfaf-ed285bdd1461
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/sharepointprotectionpolicy-get-siteinclusionrules-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/sharepointprotectionpolicy-get-siteinclusionrules-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/sharepointprotectionpolicy-get-siteinclusionrules-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/sharepointprotectionpolicy-get-siteinclusionrules-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/sharepointprotectionpolicy-get-siteinclusionrules-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/sharepointprotectionpolicy-get-siteinclusionrules-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/sharepointprotectionpolicy-get-siteinclusionrules-python-snippets.md)]
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
HTTP/1.1 200 OK
Content-Location: https://graph.microsoft.com/beta/solutions/backupRestore/sharePointProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/siteInclusionRules('61633878-8321-4950-bfaf-ed285bdd1461')

{
   "@odata.type": "#microsoft.graph.siteProtectionRule",
   "id":"61633878-8321-4950-bfaf-ed285bdd1461",
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
   "siteExpression": "((displayName -contains 'Finance')  -or  (displayName -contains 'Legal'))"
}
```

### Example 2: Get a driveInclusionRule associated with an OneDriveForBusiness protection policy

he following example shows how to get a **driveInclusionRule** associated with an [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "onedriveforbusinessprotectionpolicy_get_driveinclusionrule"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/driveInclusionRules/61633878-8321-4950-bfaf-ed285bdd1461
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/onedriveforbusinessprotectionpolicy-get-driveinclusionrule-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/onedriveforbusinessprotectionpolicy-get-driveinclusionrule-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/onedriveforbusinessprotectionpolicy-get-driveinclusionrule-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/onedriveforbusinessprotectionpolicy-get-driveinclusionrule-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/onedriveforbusinessprotectionpolicy-get-driveinclusionrule-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/onedriveforbusinessprotectionpolicy-get-driveinclusionrule-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/onedriveforbusinessprotectionpolicy-get-driveinclusionrule-python-snippets.md)]
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
HTTP/1.1 200 OK
Content-Location: https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/driveInclusionRules('61633878-8321-4950-bfaf-ed285bdd1461')

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
   "driveExpression": "(memberOf -any (group.id -in ['b418eb4a-ea72-42bd-8f0b-d0bbf794bec7']))"
}
```

### Example 3: Get a mailboxInclusionRule associated with an Exchange protection policy

he following example shows how to get a **mailboxInclusionRule** associated with an [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md).

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "exchangeprotectionpolicy_get_mailboxinclusionrule"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/solutions/backupRestore/exchangeProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/mailboxInclusionRules/61633878-8321-4950-bfaf-ed285bdd1461
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/exchangeprotectionpolicy-get-mailboxinclusionrule-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/exchangeprotectionpolicy-get-mailboxinclusionrule-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/exchangeprotectionpolicy-get-mailboxinclusionrule-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/exchangeprotectionpolicy-get-mailboxinclusionrule-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/exchangeprotectionpolicy-get-mailboxinclusionrule-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/exchangeprotectionpolicy-get-mailboxinclusionrule-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/exchangeprotectionpolicy-get-mailboxinclusionrule-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailboxProtectionRule"
}
-->
```http
Http/1.1 200 OK
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
```
