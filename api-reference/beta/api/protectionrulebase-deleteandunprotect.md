---
title: "protectionRuleBase: deleteAndUnprotect"
description: "Delete a dynamic rule and unprotect all drives protected under it**"
author: "RitikaGeraMicrosoft, manikantsinghms"
ms.reviewer: "manikantsinghms"
ms.date: 12/07/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# driveProtectionRule: deleteAndUnprotect

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


DeleteAndUnprotect action is only applicable for dynamic rules.
This action deletes a dynamic Rule and unprotect all protection units protected under it.

The following points apply to deleting a dynamic Rule and unprotecting all artifacts protected under it:
- Once a dynamic rule is deleted, it moves to a deleteRequested state.
- Unprotection of artifacts and deletion of rule are async operations and they are carried out of background job. Which may cause some delay to complete the operations. 
- If the artifact is protected by another protection source as well, it will result in the artifact being protected by the other protection source only.
- Rules moves to `deleteRequested` status when deleteAndUnprotect action is performed on dynamic rule.


## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "protectionrulebase-deleteandunprotect-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/protectionrulebase-deleteandunprotect-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
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