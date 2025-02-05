---
title: "protectionRuleBase: deleteAndUnprotect"
description: "Delete a dynamic rule and unprotect all drives protected under it."
author: "manikantsinghms"
ms.reviewer: "manikantsinghms"
ms.date: 01/15/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# protectionRuleBase: deleteAndUnprotect

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


Delete a dynamic rule and unprotect all drives it protects. This action is only applicable to dynamic rules.

The following points apply when deleting a dynamic rule and unprotecting all artifacts it protects.
- The rule moves to the `deleteRequested` status when this action is performed on a dynamic rule.
- Unprotecting artifacts and deleting rules are asynchronous operations, and they might not complete immediately. 
- This action resets the `dynamicRule` protection source. If the artifact is also protected by another protection source, it's only protected by that source afterward.
- No operation is allowed on a dynamic rule once a rule is in the `deleteRequested` state.

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

If successful, this action returns a `202 Accepted` response code and a [protectionRuleBase](../resources/protectionrulebase.md) in the response body.

## Examples

### Example 1: Delete and unprotect the driveInclusionRule associated with a OneDrive for work or school protection policy

The following example shows how to delete a **driveInclusionRule** associated with a [onedriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md) and unprotect the units it protects.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "driveprotectionrulethis.deleteandunprotect"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/driveInclusionRules/40005fb9-2682-47bc-a8f6-6c38c1ff498d/deleteAndUnprotect
```

#### Response

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
    "@odata.type": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.protectionRuleBase",
    "id": "40005fb9-2682-47bc-a8f6-6c38c1ff498d",
    "status": "deleteRequested",
    "createdDateTime": "2025-01-15T15:07:44.3043505Z",
    "lastModifiedDateTime": "2025-01-15T14:42:12.6779064Z",
    "isAutoApplyEnabled": true,
    "driveExpression": "(memberOf -any (group.id -in ['4e8e9b15-bfc8-40a2-aed0-3f65a22e2bd4']))",
    "createdBy": {
      "user": {
        "identity": "8aaaaec3-5dcb-4b47-9ef9-0dda3e95b9f4"
      }
    },
    "lastModifiedBy": {}
  }
}
```

### Example 2: Delete and unprotect the mailboxInclusionRule associated with an Exchange protection policy

The following example shows how to update a **mailboxInclusionRule** associated with an [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md).

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "mailboxprotectionrulethis.deleteandunprotect"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/mailboxInclusionRules/52147fb9-2682-47bc-a8f6-6c38c1ff498d/deleteAndUnprotect
```

#### Response

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
    "@odata.type": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.protectionRuleBase",
    "id": "52147fb9-2682-47bc-a8f6-6c38c1ff498d",
    "status": "deleteRequested",
    "createdDateTime": "2025-01-15T15:07:44.3043505Z",
    "lastModifiedDateTime": "2025-01-15T14:42:12.6779064Z",
    "isAutoApplyEnabled": true,
    "driveExpression": "(memberOf -any (group.id -in ['4e8e9b15-bfc8-40a2-aed0-3f65a22e2bd4']))",
    "createdBy": {
        "user": {
            "identity": "8aaaaec3-5dcb-4b47-9ef9-0dda3e95b9f4"
        }
    },
    "lastModifiedBy": {},
    "error": {}
  }
}
```