---
title: "fido2AuthenticationMethod: creationOptions"
description: "Retrieve creation options required to generate and register an Entra ID compatible passkey."
ms.localizationpriority: medium
author: "tilarso"
ms.reviewer: intelligentaccesspm
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 08/14/2024
---

# fido2AuthenticationMethod: creationOptions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve creation options required to generate and register a Microsoft Entra ID-compatible passkey. Self-service operations aren't supported.  

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
[!INCLUDE [permissions-table](../includes/permissions/fido2authenticationmethod-creationoptions-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-write-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-write-others.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /users/{user-id}/authentication/fido2Methods/creationOptions(challengeTimeoutInMinutes={challengeTimeoutInMinutes})
```

## Function parameters

The following table lists the parameters that are required when you call this function.

|Parameter|Type|Description|
|:---|:---|:---|
|challengeTimeoutInMinutes|Int32|Override the timeout of the server-generated challenge returned in the request. The default value is 5 minutes; this value can be overridden to between 5 - 43200 minutes.|  


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
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "fido2authenticationmethodthis.creationoptions"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/{usersId}/authentication/fido2Methods/creationOptions(challengeTimeoutInMinutes=10)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/fido2authenticationmethodthiscreationoptions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/fido2authenticationmethodthiscreationoptions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/fido2authenticationmethodthiscreationoptions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/fido2authenticationmethodthiscreationoptions-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.webauthnCredentialCreationOptions"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.webauthnCredentialCreationOptions",
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
            },
            {
                "id": "pgIfj2fnom8rJdb4/h1gKqDkq+gxHFksI+m2aR5T+PNNycBfENAM4ksEBvoXky6d",
                "type": "public-key",
                "transports": []
            },
            {
                "id": "u5wuw6SGH0VhAz7OXCLRkCuxhm4UrCB7hcLccyMU6calP1hWexfKe5PJNM69neAM",
                "type": "public-key",
                "transports": []
            },
            {
                "id": "6rc0zTSz2YRlaKlCjqxsNDjDe8qY8TSL95Z4WhxEaaP4XfvfSnAGMk49RSwm/uAO",
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
