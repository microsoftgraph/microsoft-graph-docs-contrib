---
title: "trustFrameworkKey resource type"
description: "Represents a JWK (JSON Web Key). TrustFrameworkKey is a JSON data structure that represents a cryptographic key. The structure of this resource follows the format defined in RFC 7517 Section 4."
author: "gysingh"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# trustFrameworkKey resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a JWK (JSON Web Key). TrustFrameworkKey is a JSON data structure that represents a cryptographic key. The structure of this resource follows the format defined in [RFC 7517 Section 4](https://tools.ietf.org/html/rfc7517#section-4).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|d|String|RSA Key - private exponent. Field can't be read back.|
|dp|String|RSA Key - first exponent. Field can't be read back.|
|dq|String|RSA Key - second exponent. Field can't be read back.|
|e|String|RSA Key - public exponent|
|exp|Int64|This value is a NumericDate as defined in RFC 7519 (A JSON numeric value representing the number of seconds from 1970-01-01T00:00:00Z UTC until the specified UTC date/time, ignoring leap seconds.)|
|k|String|Symmetric Key for oct key type. Field can't be read back.|
|kid|String|The unique identifier for the key.|
|kty|String|The **kty** (key type) parameter identifies the cryptographic algorithm family used with the key, The valid values are `rsa`, `oct`.|
|n|String|RSA Key - modulus|
|nbf|Int64|This value is a NumericDate as defined in RFC 7519 (A JSON numeric value representing the number of seconds from 1970-01-01T00:00:00Z UTC until the specified UTC date/time, ignoring leap seconds.)|
|p|String|RSA Key - first prime. Field can't be read back.|
|q|String|RSA Key - second prime. Field can't be read back.|
|qi|String|RSA Key - Coefficient. Field can't be read back.|
|status|trustFrameworkKeyStatus|Status of the key.The possible values are: `enabled`, `disabled`, `unknownFutureValue`.|
|use|String|The **use** (public key use) parameter identifies the intended use of the public key.  The **use** parameter is employed to indicate whether a public key is used for encrypting data or verifying the signature on data. Possible values are: `sig` (signature), `enc` (encryption)|
|x5c|String collection|The **x5c** (X.509 certificate chain) parameter contains a chain of one or more PKIX certificates [RFC 5280](https://tools.ietf.org/html/rfc5280).|
|x5t|String|The **x5t** (X.509 certificate SHA-1 thumbprint) parameter is a base64url-encoded SHA-1 thumbprint (also known as digest) of the DER encoding of an X.509 certificate [RFC 5280](https://tools.ietf.org/html/rfc5280).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.trustFrameworkKey"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.trustFrameworkKey",
  "k": "String",
  "x5c": [
    "String"
  ],
  "x5t": "String",
  "kty": "String",
  "use": "String",
  "status": "String",
  "exp": "Integer",
  "nbf": "Integer",
  "kid": "String",
  "e": "String",
  "n": "String",
  "d": "String",
  "p": "String",
  "q": "String",
  "dp": "String",
  "dq": "String",
  "qi": "String"
}
```

