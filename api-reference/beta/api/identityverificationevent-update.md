---
title: "Update identityVerificationEvent"
description: "Apply or update an administrative override reason on an identity verification event."
author: "tilarso"
ms.date: 10/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update identityVerificationEvent

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Apply or update the administrative override reason on an [identityVerificationEvent](../resources/identityverificationevent.md). Only **overrideDetails.reason** can be updated. The service sets **actorType**, **actorId**, and **overriddenDateTime** from the caller's identity on each successful update.

This operation doesn't change the verification facts, lifecycle state, or the user's aggregate verification status.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identityverificationevent-update-permissions",
  "requestUrls": ["PATCH /users/{id}/identityVerificationStatus/verificationEvents/{id}"]
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identityverificationevent-update-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
PATCH /users/{user-id}/identityVerificationStatus/verificationEvents/{identityVerificationEvent-id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON object containing **overrideDetails.reason**.

|Property|Type|Description|
|:---|:---|:---|
|overrideDetails|[verificationEventOverride](../resources/verificationeventoverride.md)|An object containing the **reason** for the override, up to 500 characters. Don't supply actor information or timestamps; the service sets those properties.|

Attempts to update any other property, including **id**, **verification**, **lifecycle**, or the server-managed override properties, return `400 Bad Request` with the error code `propertyNotPatchable`.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example applies an administrative override reason.

<!-- {
  "blockType": "request",
  "name": "update_identityverificationevent"
}
-->
```http
PATCH https://graph.microsoft.com/beta/users/c2b3a4d5-6e7f-4890-a123-4567890abcde/identityVerificationStatus/verificationEvents/9c2d5e61-1a3b-4a2f-9f6e-2f8b6c4d91aa
Content-Type: application/json

{
  "overrideDetails": {
    "reason": "In-person identity proofing confirmed by help desk"
  }
}
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
