---
title: "List siteInclusionRules"
description: "List site inclusion rules in a SharePoint protection policy."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 09/10/2024
---

# List siteInclusionRules

Namespace: microsoft.graph

Get a list of [siteProtectionRule](../resources/siteprotectionrule.md) objects associated with a [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md).

An inclusion rule indicates that a protection policy should contain protection units that match the specified rule criteria. The initial status of a protection rule upon creation is `active`. After the rule is applied, the state is either `completed` or `completedWithErrors`.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "sharepointprotectionpolicy_list_siteinclusionrules" } -->
[!INCLUDE [permissions-table](../includes/permissions/sharepointprotectionpolicy-list-siteinclusionrules-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /solutions/backupRestore/sharePointProtectionPolicies/{sharePointProtectionPolicyId}/siteInclusionRules
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [siteProtectionRule](../resources/siteprotectionrule.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "sharepointprotectionpolicy_list_siteinclusionrules"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/solutions/backupRestore/sharePointProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/siteInclusionRules
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/sharepointprotectionpolicy-list-siteinclusionrules-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/sharepointprotectionpolicy-list-siteinclusionrules-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/sharepointprotectionpolicy-list-siteinclusionrules-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/sharepointprotectionpolicy-list-siteinclusionrules-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/sharepointprotectionpolicy-list-siteinclusionrules-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/sharepointprotectionpolicy-list-siteinclusionrules-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/sharepointprotectionpolicy-list-siteinclusionrules-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.siteProtectionRule)"
}
-->
```http
HTTP/1.1 200 OK
Content-Location: https://graph.microsoft.com/v1.0/solutions/backupRestore/sharePointProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/siteInclusionRules

{
  "@odata.context": "/solutions/backupRestore/sharePointProtectionPolicies('71633878-8321-4950-bfaf-ed285bdd1461')/siteInclusionRules",
  "@odata.nextLink": "/solutions/backupRestore/sharePointProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/siteInclusionRules?$skiptoken=M2UyZDAwMDAwMDMxMzkzYTMyNjQ2MTM0NjMzMjM5NjYzNjY0MzczMDM0MzE2NTYzNjEzNzMwNjIzNjMzMzg2MjM0MzM2NDM0MzUzNDMzMzc0MDc0Njg3MjY1NjE2NDJlNzYzMjAxZThmYjY4M2Y3ODAxMDAwMDg4NjA5ODdhNzgwMTAwMDB8MTYxNjk2NDUwOTgzMg%3d%3d",
  "value":
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
         "siteExpression": "((displayName -contains 'Finance')  -or  (webUrl -contains 'Finance'))"
      }
   ]
}
```
