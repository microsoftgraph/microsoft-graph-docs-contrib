---
title: "servicePrincipal: removeKey"
description: "Remove a key credential from a servicePrincipal"
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# servicePrincipal: removeKey

Removes a key credential from a [servicePrincipal](../resources/serviceprincipal.md). This method along with [addKey](serviceprincipal-addkey.md) can be used by a servicePrincipal to programmatically rotate it's expiring keys without a user's context.

> [!Note]
> [Create servicePrincipal](../api/serviceprincipal-post-serviceprincipals.md) and
[Update servicePrincipal](../api/serviceprincipal-update.md) operations can continue to be used to add and update key credentials for any servicePrincipal with or without a user's context.

As part of the request validation for this method, a proof of possession of an existing key is verified before the action can be performed. The proof is represented by a self-signed JWT token. The requesting servicePrincipal needs to generate a self-signed JWT token with the following requirements.

Required claims:

- aud - Audience needs to be `00000002-0000-0000-c000-000000000000` (i.e. AAD Graph).
- iss - Issuer needs to be the __id__ (i.e. Object ID) of the servicePrincipal that is making the call..
- nbf - not before time
- exp - expiration time should be "nbf" + 10 mins.

The token signing key is the private key of one of the servicePrincipal existing certificates.

The certificate to be added needs to meet the following criteria to be valid:

- Its public key is part of servicePrincipal keys with `AsymmetricX509Cert` type with `Verify` usage (or) `X509CertAndPassword` type with `Sign` usage.
- Its public key has not yet expired.

servicePrincipals that don’t have any existing valid certificates (i.e.: no certificates have been added yet, or all certificates have expired), won’t be able to use this service action and separate process will be needed to perform an update instead.

The token lifespan should not exceed 10 minutes. Where token lifespan is the difference between EXP and NBF claims.

> [!Note]
> The [sample](#Sample-to-generate-proof-token) provided at the end of this document can be used to generate the proof token.

## Permissions

None. A servicePrincipal does not need any specific permission to rotate it's own keys.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /serviceprincipals/{id}/removeKey
```

## Request headers

| Name           | Description                |
|:---------------|:---------------------------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type   | application/json. Required.|

## Request body

| Property	| Type | Description|
|:----------|:-----|:-----------|
| keyId     | GUID | The unique identifier for the password. Required. |
| proof | String | A self-signed JWT token used as a proof of possession of the existing keys. The token signing key is the private key of one of the servicePrincipal existing certificates. The token should contain the following claims:<ul><li>`aud` - Audience needs to be `00000002-0000-0000-c000-000000000000` (i.e. AAD Graph).</li><li>`iss` - Issuer needs to be the __id__ (i.e. Object ID)  of the servicePrincipal that is making the call.</li><li>`nbf` - Not before time.</li><li>`exp` - Expiration time should be "nbf" + 10 mins.</li></ul><br>Required.|

## Response

If successful, this method returns a `204 No content` response code.

## Examples

The following is example shows how to call this API.

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "serviceprincipal_removekey"
}-->

```http
POST https://graph.microsoft.com/v1.0/serviceprincipals/{id}/removeKey
Content-Type: application/json

{
    "keyId": "f0b0b335-1d71-4883-8f98-567911bfdca6",
    "proof":"eyJ0eXAiOiJ..."
}
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "servicePrincipal: removeKey",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
