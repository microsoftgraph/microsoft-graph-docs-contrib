---
title: "fido2AuthenticationMethod: creationOptions"
description: "Retrieve creation options required to generate and register a passkey for a user."
author: "samudapuram"
ms.date: 04/20/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# fido2AuthenticationMethod: creationOptions

Namespace: microsoft.graph

Retrieve [creation options](../resources/webauthncredentialcreationoptions.md) required to generate and register a Microsoft Entra ID-compatible passkey. This function returns WebAuthn credential creation options that include a challenge, relying party information, and user information, which are used by the client to create a new FIDO2 credential. The **challenge** property and credential IDs in **excludeCredentials** are Base64URL-encoded without padding. All binary data in the response follows Base64URL encoding as defined in [RFC 4648 Section 5](https://www.rfc-editor.org/rfc/rfc4648#section-5).

> [!NOTE]
> This API applies a system-defined challenge timeout of 5 minutes. Unlike the beta version of this API, custom challenge timeout values are not supported in v1.0.
>
> This API has a [known issue](/graph/known-issues#fido2-provisioning-api-requires-self-service-setup-to-be-enabled) that requires **Allow self-service setup** to be enabled in the FIDO2 authentication method policy.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "fido2authenticationmethod-creationoptions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/fido2authenticationmethod-creationoptions-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-read-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-read-others.md)]

## HTTP request

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{id}/authentication/fido2Methods/creationOptions
GET /me/authentication/fido2Methods/creationOptions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [webauthnCredentialCreationOptions](../resources/webauthncredentialcreationoptions.md) object in the response body.


## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "fido2authenticationmethod_creationoptions"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/users/99a1915f-70a7-4b67-9dca-64095b41be73/authentication/fido2Methods/creationOptions
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.webauthnCredentialCreationOptions"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.webauthnCredentialCreationOptions",
  "challengeTimeoutDateTime": "2026-04-20T10:05:00Z",
  "publicKey": {
    "@odata.type": "#microsoft.graph.webauthnPublicKeyCredentialCreationOptions",
    "rp": {
      "@odata.type": "#microsoft.graph.webauthnPublicKeyCredentialRpEntity",
      "id": "login.microsoftonline.com",
      "name": "Microsoft"
    },
    "user": {
      "@odata.type": "#microsoft.graph.webauthnPublicKeyCredentialUserEntity",
      "id": "ZGF2aWRAY29udG9zby5jb20",
      "displayName": "David Smith",
      "name": "david@contoso.com"
    },
    "challenge": "QTU1MzNDNzAtNkM3Ni00NTRDLUJDQ0YtRTREMDZCNTBFRTRE",
    "pubKeyCredParams": [
      {
        "@odata.type": "#microsoft.graph.webauthnPublicKeyCredentialParameters",
        "type": "public-key",
        "alg": -7
      }
    ],
    "timeout": 60000,
    "excludeCredentials": [],
    "authenticatorSelection": {
      "@odata.type": "#microsoft.graph.webauthnAuthenticatorSelectionCriteria",
      "authenticatorAttachment": "platform",
      "requireResidentKey": true,
      "userVerification": "required"
    },
    "attestation": "direct",
    "extensions": {
      "@odata.type": "#microsoft.graph.webauthnAuthenticationExtensionsClientInputs"
    }
  }
}
```
