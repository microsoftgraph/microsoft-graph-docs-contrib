---
title: "Delete identityVerificationEvent"
description: "Remove an identity verification event record from a user's verification history."
author: "tilarso"
ms.date: 10/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Delete identityVerificationEvent

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove an [identityVerificationEvent](../resources/identityverificationevent.md) record from a user's verification history. The service recomputes the user's aggregate verification status after removing the event.

This operation removes the record for administrative cleanup; it doesn't change sign-in access controls.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identityverificationstatus-delete-verificationevents-permissions",
  "requestUrls": ["DELETE /users/{id}/identityVerificationStatus/verificationEvents/{id}"]
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identityverificationstatus-delete-verificationevents-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
DELETE /users/{user-id}/identityVerificationStatus/verificationEvents/{identityVerificationEvent-id}
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
  "name": "delete_identityverificationevent"
}
-->
```http
DELETE https://graph.microsoft.com/beta/users/c2b3a4d5-6e7f-4890-a123-4567890abcde/identityVerificationStatus/verificationEvents/9c2d5e61-1a3b-4a2f-9f6e-2f8b6c4d91aa
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response"
}
-->
```http
HTTP/1.1 204 No Content
```
