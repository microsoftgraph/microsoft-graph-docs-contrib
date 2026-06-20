---
title: "Delete detectionRule"
description: "Delete a detectionRule object."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 05/25/2026
---

# Delete detectionRule

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [detectionRule](../resources/security-detectionrule.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-rulesroot-delete-detectionrules-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-rulesroot-delete-detectionrules-permissions.md)]

[!INCLUDE [rbac-security-detection-rules-apis-write](../includes/rbac-for-apis/rbac-security-detection-rules-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /security/rules/detectionRules/{detectionRuleId}
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

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "delete_detectionrule"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/security/rules/detectionRules/4790e8ec-9488-3dde-c3a6-be0c4ba14cf9
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response"
}
-->
``` http
HTTP/1.1 204 No Content
```