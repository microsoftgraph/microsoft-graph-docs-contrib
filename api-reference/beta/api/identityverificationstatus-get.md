---
title: "Get identityVerificationStatus"
description: "Read a user's identity verification status and recent verification events."
author: "tilarso"
ms.date: 10/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get identityVerificationStatus

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read a user's [identityVerificationStatus](../resources/identityverificationstatus.md), including recent verification events. The response automatically includes up to 10 events, ordered by recency.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

The following permissions apply to reading another user's status.

<!-- {
  "blockType": "permissions",
  "name": "identityverificationstatus-get-permissions",
  "requestUrls": ["GET /users/{id}/identityVerificationStatus"]
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identityverificationstatus-get-permissions.md)]

To read only the signed-in user's status through `/me`, use the `IdentityVerification.Read` delegated permission. This permission doesn't grant access to other users' status.

## HTTP request

Get the signed-in user's status.

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

<!-- { "blockType": "ignored" } -->
```http
GET /me/identityVerificationStatus
```

Get a specified user's status.

<!-- { "blockType": "ignored" } -->
```http
GET /users/{user-id}/identityVerificationStatus
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [identityVerificationStatus](../resources/identityverificationstatus.md) object in the response body.

The service doesn't return an `expired` state. Compare **expiryDateTime**, or an event's **verification.expiresDateTime**, with the current time to determine expiry.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_identityverificationstatus"
}
-->
```http
GET https://graph.microsoft.com/beta/users/c2b3a4d5-6e7f-4890-a123-4567890abcde/identityVerificationStatus
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityVerificationStatus"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.identityVerificationStatus",
  "id": "c2b3a4d5-6e7f-4890-a123-4567890abcde",
  "state": "verified",
  "lastVerifiedDateTime": "2026-01-18T03:10:21Z",
  "expiryDateTime": "2027-01-18T03:10:21Z",
  "verificationEvents": [
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
        "source": "entra",
        "state": "active",
        "invalidatedDateTime": null
      },
      "overrideDetails": null
    }
  ]
}
```
