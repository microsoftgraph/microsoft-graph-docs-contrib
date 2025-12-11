---
title: "Delete onPremAuthenticationPolicy"
description: "Delete onPremAuthenticationPolicy."
ms.localizationpriority: medium
author: "maheshwaria"
ms.subservice: "entra-sign-in"
doc_type: "apiPageType"
ms.date: 08/15/2025
---

# Delete onPremAuthenticationPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an [onPremAuthenticationPolicy](../resources/onpremauthenticationpolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onpremauthenticationpolicy-delete-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/onpremauthenticationpolicy-delete-permissions.md)]

[!INCLUDE [onpremauthenticationpolicy-entra-roles-write](../includes/rbac-for-apis/onpremauthenticationpolicy-entra-roles-write.md)]


## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /policies/onPremAuthenticationPolicies/{id}
```

## Request headers

| Name          | Description                                                                                               |
| :------------ | :-------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.


<!-- {
  "blockType": "request",
  "name": "delete_onpremauthenticationpolicy"
}-->

```http
DELETE https://graph.microsoft.com/beta/policies/onPremAuthenticationPolicies/2e68a8f2-50ce-b21d-d25d-c34b59675ee2
```


### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 35c6eb79-08c2-43ce-b897-949d56d54c5e
2025-08-15 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Delete onPremAuthenticationPolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
