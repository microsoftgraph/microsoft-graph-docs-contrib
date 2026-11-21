---
title: "user: attest"
description: "Attest to the continued need for a guest user in the organization."
author: "faithwins"
ms.date: 11/03/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# user: attest

Namespace: microsoft.graph.identityGovernance

Attest to the continued need for a guest [user](../resources/user.md) in the organization.

## Permissions

This API supports delegated access only. Application (app-only) access isn't supported.

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "user_attest" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-attest-permissions.md)]
[!INCLUDE [rbac-guest-user-attest](../includes/rbac-for-apis/rbac-guest-user-apis-attest.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /users/{guestUserId}/microsoft.graph.identityGovernance.attest
```

## Request headers

| Name | Description |
|:---|:---|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code. It doesn't return anything in the response body.

## Examples

### Request

<!-- { "blockType": "request", "name": "user_attest_example" } -->
```http
POST https://graph.microsoft.com/v1.0/users/e4f5d67a-5a10-4c40-9734-0c5f2d83a1bf/microsoft.graph.identityGovernance.attest
```

### Response

<!-- { "blockType": "response" } -->
```http
HTTP/1.1 204 No Content
```
