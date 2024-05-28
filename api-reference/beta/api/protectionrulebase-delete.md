---
title: "Delete protectionRuleBase"
description: "Delete a protection rule associated with a protection policy."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# Delete protectionRuleBase

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [protectionRuleBase](../resources/protectionrulebase.md) in a [protectionPolicyBase](../resources/protectionpolicybase.md).

Deletion of a rule is allowed once it reaches the `completed` or `completedWithErrors` state. Deletion of a [protectionRuleBase](../resources/protectionRuleBase.md) will not remove the protection units corresponding to the rule from the [protectionPolicyBase](../resources/protectionpolicybase.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

|Permission type|Least privileged permission|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|BackupRestore-Configuration.ReadWrite.All|Not available.|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|BackupRestore-Configuration.ReadWrite.All|Not available.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /solutions/backupRestore/sharePointProtectionPolicies/{sharePointProtectionPolicyId}/siteInclusionRules/{siteProtectionRuleId}
DELETE /solutions/backupRestore/oneDriveForBusinessProtectionPolicies/{oneDriveForBusinessProtectionPolicyId}/driveInclusionRules/{driveProtectionRuleId}
DELETE /solutions/backupRestore/exchangeProtectionPolicies/{exchangeProtectionPolicyId}/mailboxInclusionRules/{mailboxProtectionRuleId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1 : Delete a siteInclusionRule associated with a SharePoint protection policy

Delete a siteInclusionRule associated with a [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md).

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "siteprotectionrule_delete"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/solutions/backupRestore/sharePointProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/siteInclusionRules/51633878-8321-4950-bfaf-ed285bdd1461
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 2 : Delete a driveInclusionRule associated with an OneDriveForBusiness protection policy

Delete a driveInclusionRule associated with an [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_driveprotectionrule"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/driveInclusionRules/51633878-8321-4950-bfaf-ed285bdd1461
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 3 : Delete a mailboxInclusionRule associated with an Exchange protection policy

Delete a mailboxInclusionRule associated with an [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md).

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "mailboxprotectionrule_delete"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/solutions/backupRestore/exchangeProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/mailboxInclusionRules/51633878-8321-4950-bfaf-ed285bdd1461
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
