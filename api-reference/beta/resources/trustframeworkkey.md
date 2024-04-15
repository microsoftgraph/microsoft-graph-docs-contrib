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
|d|String|RSA Key - private exponent. The field is not readable.|
|dp|String|RSA Key - first exponent. The field is not readable.|
|dq|String|RSA Key - second exponent. The field is not readable.|
|e|String|RSA Key - public exponent. |
|exp|Int64|This value is a NumericDate as defined in RFC 7519. That is, a JSON numeric value representing the number of seconds from 1970-01-01T00:00:00Z UTC until the specified UTC date/time, ignoring leap seconds.|
|k|String|Symmetric Key for oct key type. The field is not readable.|
|kid|String|The unique identifier for the key.|
|kty|String|The **kty** (key type) parameter identifies the cryptographic algorithm family used with the key, The valid values are `rsa`, `oct`.|
|n|String|RSA Key - modulus.|
|nbf|Int64|This value is a NumericDate as defined in RFC 7519. That is, a JSON numeric value representing the number of seconds from 1970-01-01T00:00:00Z UTC until the specified UTC date/time, ignoring leap seconds.|
|p|String|RSA Key - first prime. The field is not readable.|
|q|String|RSA Key - second prime. The field is not readable.|
|qi|String|RSA Key - Coefficient. The field is not readable.|
|status|trustFrameworkKeyStatus|Status of the key. The possible values are: `enabled`, `disabled`, `unknownFutureValue`.|
|use|String|The **use** (public key use) parameter identifies the intended use of the public key.  The **use** parameter is employed to indicate whether a public key is used for encrypting data or verifying the signature on data. Possible values are: `sig` (signature), `enc` (encryption).|
|x5c|String collection|The **x5c** (X.509 certificate chain) parameter contains a chain of one or more PKIX certificates. For more information, see [RFC 5280](https://tools.ietf.org/html/rfc5280).|
|x5t|String|The **x5t** (X.509 certificate SHA-1 thumbprint) parameter is a base64url-encoded SHA-1 thumbprint (also known as digest) of the DER encoding of an X.509 certificate. For more information, see [RFC 5280](https://tools.ietf.org/html/rfc5280).|

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
  "k": "AQHF",
  "x5c": [
    ""MIICDTCCAXagAwIBAgIQAkiG9w0zWT5PduVXKynAjHTATBgNVHSUEDDAKBggrBgEFBQcDATANBgkqhkiG9w0BAQUFAAOBgQAhrtp6oz5QYwRMFGfHqvb0HzDIyYQ5ryxYFpQaUW4+0vzMP4NRdN7WM89BeEh73YdAlOTif9T6i/KXK5G3qyUKnvO884rIYHsjvA3sS+zESU1lcyvFpD4a602xeobYqm6yHHJWRJr2yzIICkVW6QX8a3W3KteMUZY0vm0o5IU/uw==""
  ],
  "x5t": "kr03PNLOFr9InfdsfbIyoC4KCKS8",
  "kty": "oct",
  "use": "sig",
  "status": "enabled",
  "exp": "1712952360",
  "nbf": "1712952300",
  "kid": "aTREvwojOB9ph3fr2r6eTf_5eD5fmQsfsapVMwYI3o",
  "e": "AQHF",
  "n": "oNuJk44jzFgZ9R26gfdgfgtR_9Btg8vRKh3Y0",
}
```

