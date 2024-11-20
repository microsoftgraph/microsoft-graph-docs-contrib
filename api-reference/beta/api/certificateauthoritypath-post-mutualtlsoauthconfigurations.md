---
title: "Create Mutual TLS OAuth Configuration"
description: "Create a mutual TLS OAuth Configuration."
author: "ploegert"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
doc_type: apiPageType
---

# Create mutualTlsOauthConfigurations
Namespace: microsoft.graph

Add a mutualTlsOauthConfiguration resource that contains a specified certificate authority object.
[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](https://docs.microsoft.com/en-us/graph/permissions-reference).

|ScopeName|DisplayName|Description|Type|Admin Consent?|Entities/APIs covered|
|-|-|-|-|-|-|
|`MutualTlsOauthConfiguration.ReadWrite.All`| Read and write all configurations used for mutual-TLS client authentication. | Allows the app to read and update configuration used for OAuth 2.0 mutual-TLS client authentication, on behalf of the signed-in user. This includes adding and updating trusted certificate authorities. _(Granted to admin role on the device authority's AAD tenant)_|**Delegated**|**Yes**|List, Get, Create, Update, Delete|

## HTTP Request
``` http
POST /directory/certificateAuthorities/mutualTlsOauthConfigurations/
```

### Request headers
See [Authorization](/graph/security-authorization) for more information about adding the Authorization Header. The field {token} should be replaced with the associated "Access Token".
| Name | Type |	Description | Required |
| -- | -- | -- | -- |
| Authorization	| string	| Bearer {token}.   | Yes |
| Content-Type  | string    | application/json. | Yes |

### Request Body
In the request body, supply a JSON representation of the [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md) object.

You can specify the following properties when creating a **mutualTlsOauthConfigurations**.

|Property|Type|Description|Key|Required|ReadOnly|
|-|-|-|-|-|-|
|`displayName`|`String`|Friendly name|
|`tlsClientAuthParameter`|[`tlsClientRegistrationMetadata`](../resources/tlsClientRegistrationMetadata.md) | Specifies which field in the certificate contains the subject ID |No | Yes| Yes|
|`certificateAuthority`|[Collection(microsoft.graph.certificateAuthority)](https://docs.microsoft.com/en-us/graph/api/resources/certificateauthority?view=graph-rest-1.0) | Multi-value property representing a list of trusted certificate authorities. | No | No | No |

### Response

- If successful, this method returns a `201 Created` response code and a mutualTlsOauthConfiguration](../resources/mutualTlsOauthConfiguration.md) object in the response body.
- Reference [MSGraph error responses and resource types](https://docs.microsoft.com/en-us/graph/errors) for more information regarding general error codes and error conditions.

|Response Code|Condition|Message|
|-|-|-|
|`201` | Request was successful ||
|`400` | Validation failure in any of the certificate validation steps mentioned | Unable to validate device certificate|



## Example
### Request

```json
POST https://graph.microsoft.com/v1.0/directory/certificateAuthorities/mutualTlsOauthConfigurations
{
  "displayName": "DoorCamera_Model_X_TrustedCAs",
  "tlsClientAuthParameter": "tls_client_auth_subject_dn",
  "certificateAuthorities": [
    {
      "isRootAuthority": true,
      "certificateRevocationListUrl": "http://acme.com/root.crl",
      "deltaCertificateRevocationListUrl": null,
      "certificate": "joGrWL+Yqkik/CABWG0d1w....",
      "issuer": "acme Inc",
      "issuerSubjectkeyIdentifier": "SKI"
    },
    {
      "isRootAuthority": true,
      "certificateRevocationListUrl": "http://digicert.com/root.crl",
      "deltaCertificateRevocationListUrl": null,
      "certificate": "koGrWL+Yqkik/CABWG0d1w....",
      "issuer": "Digicert Inc",
      "issuerSubjectkeyIdentifier": "SKI"
    }
  ]
}
```


### Response

```json
HTTP/1.1 201 Created
Location: "https://graph.microsoft.com/v1.0/directory/certificateAuthorities/mutualTlsOauthConfigurations/eec5ba11-2fc0-4113-83a2-ed986ed13cdb"

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/certificateAuthorities/mutualTlsOauthConfigurations/$entity",
  "id":"eec5ba11-2fc0-4113-83a2-ed986ed13cdb",
  "displayName": "DoorCamera_Model_X_TrustedCAs",
  "tlsClientAuthParameter": "tls_client_auth_subject_dn",
  "certificateAuthorities": [
    {
      "isRootAuthority": true,
      "certificateRevocationListUrl": "http://acme.com/root.crl",
      "deltaCertificateRevocationListUrl": null,
      "certificate": "joGrWL+Yqkik/CABWG0d1w....",
      "issuer": "acme Inc",
      "issuerSubjectkeyIdentifier": "SKI"
    },
    {
      "isRootAuthority": true,
      "certificateRevocationListUrl": "http://digicert.com/root.crl",
      "deltaCertificateRevocationListUrl": null,
      "certificate": "koGrWL+Yqkik/CABWG0d1w....",
      "issuer": "Digicert Inc",
      "issuerSubjectkeyIdentifier": "SKI"
    }
  ]
}
```
