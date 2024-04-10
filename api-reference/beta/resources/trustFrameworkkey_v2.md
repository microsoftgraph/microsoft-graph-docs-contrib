---
title: "trustFrameworkKey_v2 resource type"
description: "Represents a JWK (JSON Web Key). TrustFrameworkKey_v2 is a JSON data structure that represents a cryptographic key. The structure of this resource follows the format defined in RFC 7517 Section 4."
ms.localizationpriority: medium
author: "valnav"
ms.subservice: "entra-sign-in"
doc_type: "resourcePageType"
---

# trustFrameworkKey_v2 resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a JWK (JSON Web Key). TrustFrameworkKey_v2 is a JSON data structure that represents a cryptographic key. The structure of this resource follows the format defined in [RFC 7517 Section 4](https://tools.ietf.org/html/rfc7517#section-4).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get Key from TrustFrameworkKeySet](../api/trustframeworkkeyset-getkey.md)       | [trustFrameworkKey_v2](trustframeworkkey_v2.md)  | Read properties and members of trustFrameworkKeySet.                                                 |
| [Patch Key in TrustFrameworkKeySet](../api/trustframeworkkeyset-patchkeystatus.md)       | None                                  | Update target key status in trustFrameworkKeySet.

### POST and PUT Key operation in TrustFrameworkKeySet are not supported for trustFrameworkKey_v2.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| kid | string | The unique identifier for the key.   |
| kty | String | The **kty** (key type) parameter identifies the cryptographic algorithm family used with the key, The valid values are `rsa`, `oct`. |
| status | string  | Status of the key i.e., enabled, disabled |
| use | String | The **use** (public key use) parameter identifies the intended use of the public key.  The **use** parameter is employed to indicate whether a public key is used for encrypting data or verifying the signature on data. Possible values are: `sig` (signature), `enc` (encryption)  |
| x5c | string collection | The **x5c** (X.509 certificate chain) parameter contains a chain of one or more PKIX certificates [RFC 5280](https://tools.ietf.org/html/rfc5280). |
| x5t | string | The **x5t** (X.509 certificate SHA-1 thumbprint) parameter is a base64url-encoded SHA-1 thumbprint (also known as digest) of the DER encoding of an X.509 certificate [RFC 5280](https://tools.ietf.org/html/rfc5280). |
| e | string | RSA Key - public exponent |
| d| string | RSA Key - private exponent. Field can't be read back. |
| n | string | RSA Key - modulus |
| p | string | RSA Key - first prime. Field can't be read back. |
| q | string | RSA Key - second prime. Field can't be read back. |
| dp | string | RSA Key - first exponent. Field can't be read back. |
| dq | string | RSA Key - second exponent. Field can't be read back. |
| qi | string | RSA Key - Coefficient. Field can't be read back. |
| k | string | Symmetric Key for oct key type. Field can't be read back.   |
| nbf | int | This value is a NumericDate as defined in RFC 7519 (A JSON numeric value representing the number of seconds from 1970-01-01T00:00:00Z UTC until the specified UTC date/time, ignoring leap seconds.) |
| exp | int | This value is a NumericDate as defined in RFC 7519 (A JSON numeric value representing the number of seconds from 1970-01-01T00:00:00Z UTC until the specified UTC date/time, ignoring leap seconds.) |

## JSON representation

Here's a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.trustFrameworkKey_v2",
  "baseType": null
}-->

```json
{
  "d": "String",
  "dp": "String",
  "dq": "String",
  "e": "String",
  "exp": 1024,
  "k": "String",
  "kid": "String",
  "kty": "String",
  "status": "String"
  "n": "String",
  "nbf": 1024,
  "p": "String",
  "q": "String",
  "qi": "String",
  "use": "String",
  "x5c": ["String"],
  "x5t": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "trustFrameworkKey_v2 resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


