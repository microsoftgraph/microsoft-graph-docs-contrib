---
title: "fido2AuthenticationMethod: creationOptions"
description: "Retrieve creation options required to generate and register an Entra ID compatible passkey."
author: "tilarso"
ms.reviewer: intelligentaccesspm
ms.date: 04/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# fido2AuthenticationMethod: creationOptions

Namespace: microsoft.graph

Retrieve creation options required to generate and register a Microsoft Entra ID-compatible passkey. Self-service operations aren't supported.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "fido2authenticationmethod-creationoptions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/fido2authenticationmethod-creationoptions-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-write-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-write-others.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{id}/authentication/fido2Methods/creationOptions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [webauthnCredentialCreationOptions](../resources/webauthncredentialcreationoptions.md) in the response body.

> [!NOTE]
> This method also returns **excludeCredentials** key IDs formatted in Base64URL with a padding number suffix. To decode the key IDs, convert the trailing integer value of 0, 1, or 2 to the same number of base64 padding characters.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "fido2authenticationmethodthis.creationoptions"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/users/65b7236a-8e88-4c6a-85dc-1d79ab74267c/authentication/fido2Methods/creationOptions
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
  "value": {
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#microsoft.graph.webauthnCredentialCreationOptions",
    "challengeTimeoutDateTime": "2024-08-14T16:29:58Z",
    "publicKey": {
        "challenge": "ZXlKaGJHY2lPaUpTVTBFdFQwRkZVQzB5TlRZaUxDSmxibU1pT2lKQk1qVTJSME5OSWl3aWVEVmpJanBiSWsxSlNVUmhSRU5EUVd4...",
        "timeout": 0,
        "attestation": "direct",
        "rp": {
            "id": "login.microsoft.com",
            "name": "Microsoft"
        },
        "user": {
            "id": "T0Y6Ehqp2EfQP0iExdt54DFwdWuaH7qIZbZGpOc92RGnvbXyRPvU-8AOp9r1T7Cebfc3",
            "displayName": "Kim User",
            "name": "kimuser@contoso.com"
        },
        "pubKeyCredParams": [
            {
                "type": "public-key",
                "alg": -7
            },
            {
                "type": "public-key",
                "alg": -257
            }
        ],
        "excludeCredentials": [
            {
                "id": "0S64X8KwFmCeJjHzK1oE/39T+JYhfYbhFurwOxMMjtvRWc/sLYq8AMJVuva823XQ",
                "type": "public-key",
                "transports": []
            }
        ],
        "authenticatorSelection": {
            "authenticatorAttachment": "cross-platform",
            "requireResidentKey": true,
            "userVerification": "required"
        },
        "extensions": {
            "hmacCreateSecret": true,
            "enforceCredentialProtectionPolicy": true,
            "credentialProtectionPolicy": "userVerificationOptional"
        }
    }
  }
}
```

