---
title: "servicePrincipal: addKey"
description: "Add a key credential to a servicePrincipal."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# servicePrincipal: addKey

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Adds a key credential to a [servicePrincipal](../resources/serviceprincipal.md). This method along with [removeKey](serviceprincipal-removekey.md) can be used by a servicePrincipal to programmatically rotate it's expiring keys without a user's context.

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
POST /serviceprincipals/{id}/addKey
```

## Request headers

| Name           | Description                |
|:---------------|:---------------------------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type   | application/json. Required.|

## Request body

In the request body, provide the following properties.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| keyCredential | [keyCredential](../resources/keycredential.md) | The servicePrincipal key credential to add. Supported key types are:<br><ul><li>`AsymmetricX509Cert`: The usage must be `Verify`.</li><li>`X509CertAndPassword`: The usage must be `Sign`</li></ul><br>Required. |
| passwordCredential | [passwordCredential](../resources/passwordcredential.md) | Required only for keys of type `X509CertAndPassword`. Set it to `null` otherwise.|
| proof | String | A self-signed JWT token used as a proof of possession of the existing keys. The token signing key is the private key of one of the servicePrincipal existing certificates. The token should contain the following claims:<ul><li>`aud` - Audience needs to be `00000002-0000-0000-c000-000000000000` (i.e. AAD Graph).</li><li>`iss` - Issuer needs to be the __id__ (i.e. Object ID)  of the servicePrincipal that is making the call.</li><li>`nbf` - Not before time.</li><li>`exp` - Expiration time should be "nbf" + 10 mins.</li></ul><br>Required.|

## Response

If successful, this method returns a `200 OK` response code and a new [keyCredential](../resources/keycredential.md) object in the response body.

## Examples

### Example 1: Adding a new key credential to a servicePrincipal

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "serviceprincipal_addkey"
}-->

```http
POST https://graph.microsoft.com/beta/serviceprincipals/{id}/addKey
Content-type: application/json

{
    "keyCredential": {
        "type": "AsymmetricX509Cert",
        "usage": "Verify",
        "key": "MIIDYDCCAki..."
    },
    "passwordCredential": null,
    "proof":"eyJ0eXAiOiJ..."
}
```

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.keyCredential"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.keyCredential"
}
```

### Example 2: Adding a key credential and an associated password for the key

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "serviceprincipal_addkey"
}-->

```http
POST https://graph.microsoft.com/beta/serviceprincipals/{id}/addKey
Content-type: application/json

{
    "keyCredential": {
        "type": "X509CertAndPassword",
        "usage": "Sign",
        "key": "MIIDYDCCAki..."
    },
    "passwordCredential": {
        "secretText": "MKTr0w1..."
    },
    "proof":"eyJ0eXAiOiJ..."
}
```

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.keyCredential"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "servicePrincipal: addKey",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

## Sample to generate proof token

The following sample could be used to generate the proof token:

```csharp
using System;
using System.Collections.Generic;
using System.Security.Cryptography.X509Certificates;
using Microsoft.IdentityModel.Tokens;
using Microsoft.IdentityModel.JsonWebTokens;

namespace MicrosoftIdentityPlatformProofTokenGenerator
{
    class Program
    {
        static void Main(string[] args)
        {
            // Configure the following
            string pfxFilePath = "<Path to your certificate file";
            string password = "<Certificate password>";
            string objectId = "<id of the servicePrincipal object>";

            // Get signing certificate
            X509Certificate2 signingCert = new X509Certificate2(pfxFilePath, password);

            // audience
            string aud = $"00000002-0000-0000-c000-000000000000"; // AAD Graph

            // aud and iss are the only required claims.
            var claims = new Dictionary<string, object>()
            {
                { "aud", aud },
                { "iss", objectId }
            };

            // token validity should not be more than 10 minutes
            var now = DateTime.UtcNow;
            var securityTokenDescriptor = new SecurityTokenDescriptor
            {
                Claims = claims,
                NotBefore = now,
                Expires = now.AddMinutes(10),
                SigningCredentials = new X509SigningCredentials(signingCert)
            };

            var handler = new JsonWebTokenHandler();
            var x = handler.CreateToken(securityTokenDescriptor);
            Console.WriteLine(x);
        }
    }
}
```