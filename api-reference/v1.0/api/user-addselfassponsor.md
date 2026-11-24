---
title: "user: addSelfAsSponsor"
description: "Add the signed-in user as a sponsor of a sponsorless guest user."
author: "faithwins"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# user: addSelfAsSponsor

Namespace: microsoft.graph.identityGovernance

Add the signed-in [user](../resources/user.md) as a sponsor of a sponsorless guest user. The signed-in user must be a member user. This action is idempotent and returns `204 No Content` if the signed-in user is already a sponsor.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "user_addselfassponsor" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-addselfassponsor-permissions.md)]

This action supports delegated access for work or school accounts only. Personal Microsoft accounts aren't supported. Application calls are rejected with `400 Bad Request`. The lifecycle workflows action doesn't check an additional named Graph scope or admin role.

The signed-in caller must exist and must not be a guest. The target must exist and must be a guest. Adding a sponsor is allowed only when the target has no sponsors, except that a caller who already sponsors the target receives a successful response.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /users/{guestUserId}/microsoft.graph.identityGovernance.addSelfAsSponsor
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

<!-- { "blockType": "request", "name": "user_add_self_as_sponsor" } -->
```http
POST https://graph.microsoft.com/v1.0/users/e4f5d67a-5a10-4c40-9734-0c5f2d83a1bf/microsoft.graph.identityGovernance.addSelfAsSponsor
```

### Response

<!-- { "blockType": "response" } -->
```http
HTTP/1.1 204 No Content
```
