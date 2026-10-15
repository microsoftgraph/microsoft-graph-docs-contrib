---
title: "Create identityVerificationEvent"
description: "Record an identity verification event for a user."
author: "tilarso"
ms.date: 10/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Create identityVerificationEvent

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Record an [identityVerificationEvent](../resources/identityverificationevent.md) in a user's [identityVerificationStatus](../resources/identityverificationstatus.md). The service recomputes the user's aggregate status when it records the event.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identityverificationstatus-post-verificationevents-permissions",
  "requestUrls": ["POST /users/{id}/identityVerificationStatus/verificationEvents"]
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identityverificationstatus-post-verificationevents-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /users/{user-id}/identityVerificationStatus/verificationEvents
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [identityVerificationEvent](../resources/identityverificationevent.md) object.

|Property|Type|Description|
|:---|:---|:---|
|id|String|Required. The client-supplied event identifier, which also acts as an idempotency key.|
|lifecycle|[verificationEventLifecycle](../resources/verificationeventlifecycle.md)|Required. Supply **source** to identify the source of the event. The service sets **state** and **invalidatedDateTime**.|
|overrideDetails|[verificationEventOverride](../resources/verificationeventoverride.md)|Optional. Supply **reason** for an administrative or programmatic override. The service sets the actor information and timestamp.|
|verification|[verificationEventDetail](../resources/verificationeventdetail.md)|Required. The verification facts. Supply **state** as `issued` or `verified`. For a completed verification, supply **source** and **verifiedDateTime**. These values can be `null` when the state is `issued`.|

The event ID enables safe retries. Repeating an existing event ID with the same verification and lifecycle facts returns `204 No Content`. A mismatched replay returns `409 Conflict`, except for the supported promotion of an event from `issued` to `verified`. Don't use event PATCH to change verification facts.

## Response

If successful, this method returns a `201 Created` response code and an [identityVerificationEvent](../resources/identityverificationevent.md) object in the response body. An equivalent replay returns `204 No Content` without a response body.

## Examples

### Request

The following example records a completed verification.

<!-- {
  "blockType": "request",
  "name": "create_identityverificationevent_from_"
}
-->
```http
POST https://graph.microsoft.com/beta/users/c2b3a4d5-6e7f-4890-a123-4567890abcde/identityVerificationStatus/verificationEvents
Content-Type: application/json

{
  "id": "9c2d5e61-1a3b-4a2f-9f6e-2f8b6c4d91aa",
  "verification": {
    "state": "verified",
    "verifiedIdProfileId": "b3c4d5e6-f7a8-4901-a234-56789abcdef0",
    "externalCredentialId": "urn:pic:73b78a00-5b9e-4f8c-85dd-b60a08dc1123",
    "source": "Contoso Identity Services",
    "issuedDateTime": "2026-01-18T03:00:00Z",
    "verifiedDateTime": "2026-01-18T03:10:21Z",
    "expiresDateTime": "2027-01-18T03:10:21Z"
  },
  "lifecycle": {
    "source": "entra"
  }
}
```

### Response

The following example shows the response for a newly created event.

<!-- {
  "blockType": "response",
  "name": "create_identityverificationevent_response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityVerificationEvent"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.identityVerificationEvent",
  "id": "9c2d5e61-1a3b-4a2f-9f6e-2f8b6c4d91aa",
  "verification": {
    "state": "verified",
    "verifiedIdProfileId": "b3c4d5e6-f7a8-4901-a234-56789abcdef0",
    "externalCredentialId": "urn:pic:73b78a00-5b9e-4f8c-85dd-b60a08dc1123",
    "source": "Contoso Identity Services",
    "issuedDateTime": "2026-01-18T03:00:00Z",
    "verifiedDateTime": "2026-01-18T03:10:21Z",
    "expiresDateTime": "2027-01-18T03:10:21Z"
  },
  "lifecycle": {
    "source": "entra",
    "state": "active",
    "invalidatedDateTime": null
  },
  "overrideDetails": null
}
```
