---
title: "driveProtectionRule: deleteAndUnprotect"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.date: 01/07/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# driveProtectionRule: deleteAndUnprotect

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "driveprotectionrule-deleteandunprotect-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/driveprotectionrule-deleteandunprotect-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/driveInclusionRules/{driveProtectionRuleId}/deleteAndUnprotect
POST /solutions/backupRestore/oneDriveForBusinessProtectionPolicies/{oneDriveForBusinessProtectionPolicyId}/driveInclusionRules/{driveProtectionRuleId}/deleteAndUnprotect
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
  "name": "driveprotectionrulethis.deleteandunprotect"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/driveInclusionRules/{driveProtectionRuleId}/deleteAndUnprotect
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.protectionRuleBase"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.protectionRuleBase",
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

