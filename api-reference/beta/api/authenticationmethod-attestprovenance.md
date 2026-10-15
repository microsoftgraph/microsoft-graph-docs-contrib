---
title: "authenticationMethod: attestProvenance"
description: "Apply an administrative attestation to an authentication method's credential provenance."
author: "tilarso"
ms.date: 10/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# authenticationMethod: attestProvenance

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Apply an administrative attestation to the [credential provenance](../resources/credentialprovenance.md) of an [authenticationMethod](../resources/authenticationmethod.md).

Credential provenance is currently supported for FIDO2 authentication methods. Classification, actor information, and timestamps are managed by the service and aren't request parameters.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "authenticationmethod-attestprovenance-permissions",
  "requestUrls": ["POST /users/{id}/authentication/methods/{id}/attestProvenance"]
}
-->
[!INCLUDE [permissions-table](../includes/permissions/authenticationmethod-attestprovenance-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /users/{user-id}/authentication/methods/{authenticationMethod-id}/attestProvenance
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

|Parameter|Type|Description|
|:---|:---|:---|
|attestationReason|String|Required. The explanation for the administrative attestation.|
|verificationEventId|String|Required. The identifier of the user's [identityVerificationEvent](../resources/identityverificationevent.md) associated with the attestation.|

## Response

If successful, this action returns a `200 OK` response code and a [credentialProvenance](../resources/credentialprovenance.md) object in the response body.

## Examples

### Request

The following example attests the provenance of a user's FIDO2 authentication method.

<!-- {
  "blockType": "request",
  "name": "authenticationmethodthis.attestprovenance"
}
-->
```http
POST https://graph.microsoft.com/beta/users/c2b3a4d5-6e7f-4890-a123-4567890abcde/authentication/methods/-2_GRUg2-HYz6_1YG4YRAQ2/attestProvenance
Content-Type: application/json

{
  "attestationReason": "In-person identity proofing confirmed by help desk",
  "verificationEventId": "9c2d5e61-1a3b-4a2f-9f6e-2f8b6c4d91aa"
}
```

### Response

The following example shows the response, shortened to show the server-recorded actor information.

<!-- {
  "blockType": "response",
  "name": "attestprovenance_response",
  "truncated": true,
  "@odata.type": "microsoft.graph.credentialProvenance"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.credentialProvenance",
  "assertedBy": {
    "actorType": "user",
    "actorId": "84fd0782-d012-4b54-9a6c-16e52413f6de"
  }
}
```
