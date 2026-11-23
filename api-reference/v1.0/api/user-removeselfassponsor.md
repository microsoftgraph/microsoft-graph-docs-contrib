---
title: "user: removeSelfAsSponsor"
description: "Remove the signed-in user as a sponsor of a guest user."
author: "faithwins"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# user: removeSelfAsSponsor

Namespace: microsoft.graph.identityGovernance

Remove the signed-in [user](../resources/user.md) as a sponsor of a guest user.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "user_removeselfassponsor" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-removeselfassponsor-permissions.md)]

This action supports delegated access for work or school accounts only. Personal Microsoft accounts aren't supported. Application calls are rejected with `400 Bad Request`. The lifecycle workflows action doesn't check an additional named Graph scope or admin role.

The signed-in caller must exist and must not be a guest. The target must exist and must be a guest. The action removes only the signed-in caller's sponsorship; it doesn't remove any other sponsor.

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

<!-- { "blockType": "request", "name": "user_remove_self_as_sponsor" } -->
```http
POST https://graph.microsoft.com/v1.0/users/e4f5d67a-5a10-4c40-9734-0c5f2d83a1bf/microsoft.graph.identityGovernance.removeSelfAsSponsor
```

### Response

<!-- { "blockType": "response" } -->
```http
HTTP/1.1 204 No Content
```
