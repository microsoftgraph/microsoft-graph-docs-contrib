---
title: "mailboxProtectionRule: run"
description: "Actives mailbox protection rule."
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# mailboxProtectionRule: run

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Upon running the protection rule using the /run API, the status of protectionRuleBase transitions to active. The state transition is draft -> active.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "mailboxprotectionrule-run-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/mailboxprotectionrule-run-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/exchangeProtectionPolicies/{exchangeProtectionPolicyId}/mailboxInclusionRules/{mailboxProtectionRuleId}/run
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [protectionRuleBase](../resources/protectionrulebase.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "mailboxprotectionrulethis.run"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/mailboxInclusionRules/{mailboxProtectionRuleId}/run
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.backupRestore.protectionRuleBase"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.backupRestore.protectionRuleBase",
    "id": "String (identifier)",
    "status": "String",
    "createdDateTime": "String (timestamp)",
    "createdBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "lastModifiedDateTime": "String (timestamp)",
    "lastModifiedBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "error": {
      "@odata.type": "microsoft.graph.publicError"
    },
    "isAutoApplyEnabled": "Boolean"
  }
}
```

