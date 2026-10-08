---
title: "user: removeSelfAsSponsor"
description: "Remove the signed-in user as a sponsor of a guest user."
author: "faithwins"
ms.date: 09/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# user: removeSelfAsSponsor

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove the signed-in [user](../resources/user.md) as a sponsor of a guest user.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "user_removeselfassponsor" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-removeselfassponsor-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /users/{guestUserId}/microsoft.graph.identityGovernance.removeSelfAsSponsor
```

## Request headers

| Name | Description |
|:---|:---|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code. It doesn't return anything in the response body. If the signed-in user isn't currently a sponsor of the guest user, the action returns `404 Not Found`.

## Examples

### Request

```http
POST https://graph.microsoft.com/beta/users/e4f5d67a-5a10-4c40-9734-0c5f2d83a1bf/microsoft.graph.identityGovernance.removeSelfAsSponsor
```

### Response

```http
HTTP/1.1 204 No Content
```
