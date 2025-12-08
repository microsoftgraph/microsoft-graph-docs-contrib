---
title: "Create fido2AuthenticationMethod"
description: "Create a new fido2AuthenticationMethod object."
ms.localizationpriority: medium
author: "tilarso"
ms.reviewer: intelligentaccesspm
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 08/14/2024
---

# Create fido2AuthenticationMethod

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) object.

> [!NOTE]
> Self-service operations aren't currently supported.  

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
[!INCLUDE [permissions-table](../includes/permissions/authentication-post-fido2methods-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /users/{id}/authentication/fido2methods 
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
|displayName|String|Custom name given to the registered fido2AuthenticationMethod|
|publicKeyCredential|[webauthnPublicKeyCredential](../resources/webauthnpublickeycredential.md)|Contains the WebAuthn public key credential information being registered|

> [!NOTE]
> The publicKeyCredential|[webAuthnPublicKeyCredential](../resources/webAuthnpublickeycredential.md) is a write-only property and is not returned in GET requests.

Currently, only attestation formats of "packed" or "None" are supported at this time.

## Response

If successful, this method returns a `201 Created` response code and a [fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_fido2authenticationmethod_from_"
}
-->
```http
POST https://graph.microsoft.com/beta/users/{id}/authentication/fido2Methods
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fido2AuthenticationMethod",
  "displayName": "Red Key",
  "publicKeyCredential": {
    "id": "pgIfj2fnom8rJdb4_h1gKqDkq-gxHFksI-m2aR5T-PNNycBfENAM4ksEBvoXky6d",
    "response": {
      "clientDataJSON": "VGhpcyBpcyB0aGUgY2xpZW50RGF0YUpTT04gZW5jb2RlZCB0byBiZSB3ZWJzYWZlIHdoaWNoIHdpbGwgYmUgc2VudCB0byBFbnRyYSBJRA",
      "attestationObject": "VGhpcyBpcyB0aGUgYXR0ZXN0YXRpb25PYmplY3QgZW5jb2RlZCB0byBiZSB3ZWJzYWZlIHdoaWNoIHdpbGwgYmUgc2VudCB0byBFbnRyYSBJRA"
    }
  }
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-fido2authenticationmethod-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fido2AuthenticationMethod"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.fido2AuthenticationMethod",
  "id": "73ecec75-b546-cd6a-d74d-8bb81e58d4a7",
  "displayName": "Red Key",
  "createdDateTime": "2020-08-10T06:44:09Z",
  "aaGuid": "2fc0579f-8113-47ea-b116-555a8db9202a",
  "model": "NFC Key",
  "attestationCertificates": [
    "dbe793efdf1945e2df25d93653a1e8a3268a9075"
  ],
  "attestationLevel": "attested"
}
```

> [!NOTE]
> Ensure proper base64URL encoding and decoding of the publicKeyCredential.id is performed before you use the response data to create a passkey on a FIDO2 security key.
