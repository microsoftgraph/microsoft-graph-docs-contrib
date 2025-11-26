---
title: "Remove onPremAuthenticationPolicy appliesTo"
description: "Remove a directoryObject object that's in scope for onPremAuthenticationPolicy."
author: "maheshwaria"
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Remove onPremAuthenticationPolicy appliesTo

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove a [directoryObject](../resources/directoryobject.md) object that's in scope for [onPremAuthenticationPolicy](../resources/onPremAuthenticationPolicy.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onpremauthenticationpolicy-delete-appliesto-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/onpremauthenticationpolicy-delete-appliesto-permissions.md)]

[!INCLUDE [onpremauthenticationpolicy-entra-roles-write](../includes/rbac-for-apis/onpremauthenticationpolicy-entra-roles-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /policies/onPremAuthenticationPolicies/{onPremAuthenticationPolicyId}/appliesTo/{id}/$ref
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
  "name": "delete_appliesto_from_onpremauthenticationpolicy"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/policies/onPremAuthenticationPolicies/{onPremAuthenticationPolicyId}/appliesTo/{id}/$ref
```


### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

