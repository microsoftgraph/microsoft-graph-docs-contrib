---
title: "Create fido2AuthenticationMethod"
description: "Create a new fido2AuthenticationMethod object for a user."
author: "samudapuram"
ms.date: 04/20/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Create fido2AuthenticationMethod

Namespace: microsoft.graph

Create a new [fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) object for a user. This API completes the registration of a FIDO2 security key (passkey) as part of the WebAuthn registration ceremony.

**Passkey registration flow:**
1. Call the [creationOptions](../api/fido2authenticationmethod-creationoptions.md) function to retrieve WebAuthn credential creation options from Microsoft Entra ID.
2. Use the returned options to create a new credential in the browser or authenticator using the WebAuthn API.
3. POST the resulting public key credential to this API to complete registration.

> [!NOTE]
> This API has the following known issues:
> - It doesn't support provisioning of pre-registered passkeys. For more information, see [Known issue: Provisioning of pre-registred passkeys not supported](/graph/known-issues#provisioning-of-pre-registred-passkeys-not-supported)
> - Admins must enable **Allow self-service setup** in the FIDO2 authentication method policy to use the FIDO2 provisioning API. For more information, see [Known issue: FIDO2 provisioning API requires self-service setup to be enabled](/graph/known-issues#fido2-provisioning-api-requires-self-service-setup-to-be-enabled).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "authentication-post-fido2methods-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/authentication-post-fido2methods-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-write-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-write-others.md)]

## HTTP request

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{id}/authentication/fido2Methods
POST /me/authentication/fido2Methods
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) object.

You can specify the following properties when creating a **fido2AuthenticationMethod**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the FIDO2 security key. Optional.|
|publicKeyCredential|[webauthnPublicKeyCredential](../resources/webauthnpublickeycredential.md)|The WebAuthn public key credential that the authenticator created. Base64URL-encode all binary data without padding, as defined in [RFC 4648 Section 5](https://www.rfc-editor.org/rfc/rfc4648#section-5). This encoding applies to the credential **id**, **clientDataJSON**, and **attestationObject** properties. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_fido2authenticationmethod_from_authentication"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/users/99a1915f-70a7-4b67-9dca-64095b41be73/authentication/fido2Methods
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fido2AuthenticationMethod",
  "displayName": "My security key",
  "publicKeyCredential": {
    "@odata.type": "#microsoft.graph.webauthnPublicKeyCredential",
    "id": "OEVEMkQzNTctNzNEMi00RjEzLTk5MjYtODdGNjFCMjRBMzQy",
    "response": {
      "@odata.type": "#microsoft.graph.webauthnAuthenticatorAttestationResponse",
      "clientDataJSON": "eyJ0eXBlIjoid2ViYXV0aG4uY3JlYXRlIiwiY2hhbGxlbmdlIjoiUVRVMU16TkROekF0TmtNM05pMDBOVFJETFVKRFEwWXRSVFJFTURaQ05UQkZSVFJFIiwib3JpZ2luIjoiaHR0cHM6Ly9sb2dpbi5taWNyb3NvZnRvbmxpbmUuY29tIiwiY3Jvc3NPcmlnaW4iOmZhbHNlfQ",
      "attestationObject": "o2NmbXRkbm9uZWdhdHRTdG10oGhhdXRoRGF0YVikSZYN5YgOjGh0NBcPZHZgW4/krrmihjLHmVzzuoMdl2NdAAAAALraVWanqkAfvZZFYZpVEg0AIDhFRDJEMzU3LTczRDItNEYxMy05OTI2LTg3RjYxQjI0QTM0MqUBAgMmIAEhWCAMKJ7T4r8w5F6JGxJLJXNR0hV1MZF1aZ1F0pZXq5p5"
    },
    "clientExtensionResults": {
      "@odata.type": "#microsoft.graph.webauthnAuthenticationExtensionsClientOutputs"
    }
  }
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fido2AuthenticationMethod"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fido2AuthenticationMethod",
  "id": "73e4b2c6-8a2f-4d3e-9b1a-5c7d8e9f0a1b",
  "displayName": "My security key",
  "createdDateTime": "2026-04-20T10:15:30Z",
  "aaGuid": "de1e552d-db1d-4423-a619-566b625cdc84",
  "model": "Security Key NFC by Yubico",
  "attestationCertificates": [],
  "attestationLevel": "attested",
  "passkeyType": "deviceBound"
}
```
