---
title: "mutualTlsOauthConfiguration resource type"
ms.date: 11/20/2024
description: "Represents a mutualTlsOauthConfig"
author: "ploegert"
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# mutualTlsOauthConfiguration resource type

Represents a list of Certificate Authorities (CAs) that are permitted to issue certificates for a particular set of objects that are used for mTLS.

This object is typically created by a device authority on their own EntraId tenant. In some cases, the user might choose to create this object in their EntraId tenant.

For customers that use first party Azure IoT registries, this object may also be stored in the Microsoft Services tenant.


## Methods
| Method       | Method | Success Code | Return Type  | Description | 
|:---------------|:--------|:----------|:---|:---|
|[List](../api/certificateauthoritypath-list-mutualtlsoauthconfigurations.md) |`GET` |`200` | [mutualTlsOauthConfiguration](mutualtlsoauthconfiguration.md) collection| Retrieve a list of mutualTlsOauthConfiguration registered in the directory. |
|[Create](../api/certificateauthoritypath-post-mutualtlsoauthconfigurations.md) | `POST` |`201` | [mutualTlsOauthConfiguration](mutualtlsoauthconfiguration.md) | Create mutualTlsOauthConfiguration object. | 
|[Get](../api/mutualtlsoauthconfiguration-get.md)| `GET`|`200` | [mutualTlsOauthConfiguration](mutualtlsoauthconfiguration.md) | Read properties and relationships of mutualTlsOauthConfiguration object.| 
|[Update](../api/mutualtlsoauthconfiguration-update.md) | `PATCH`/`PUT` |`204` | [mutualTlsOauthConfiguration](mutualtlsoauthconfiguration.md)  | Update the properties of the mutualTlsOauthConfiguration object.  |
|[Delete](../api/certificateauthoritypath-delete-mutualtlsoauthconfigurations.md) | `DELETE`      |`204` | None |Delete the mutualTlsOauthConfiguration object.   |

## Permissions
|ScopeName|DisplayName|Description|Type|Admin Consent?|Entities/APIs covered|
|-|-|-|-|-|-|
|`MutualTlsOauthConfiguration.Read.All`| Read all configurations used for mutual-TLS client authentication. | Allows the app to read configuration used for OAuth 2.0 mutual-TLS client authentication, on behalf of the signed-in user. This includes reading trusted certificate authorities. _(Granted to admin role on the device authority's EntraId tenant)_|**Delegated**|**Yes**|List, Get|
|`MutualTlsOauthConfiguration.ReadWrite.All`| Read and write all configurations used for mutual-TLS client authentication. | Allows the app to read and update configuration used for OAuth 2.0 mutual-TLS client authentication, on behalf of the signed-in user. This includes adding and updating trusted certificate authorities. _(Granted to admin role on the device authority's EntraId tenant)_|**Delegated**|**Yes**|List, Get, Create, Update, Delete|

## Properties

|Property|Type|Description|Key|Required|ReadOnly|
|-|-|-|-|-|-|
|`displayName`|`String`|Friendly name|
|`tlsClientAuthParameter`|[`tlsClientRegistrationMetadata`](enums.md#tlsClientRegistrationMetadata) | Specifies which field in the certificate contains the subject ID |No | Yes| Yes|
|`certificateAuthority`|[Collection(microsoft.graph.certificateAuthority)](https://docs.microsoft.com/en-us/graph/api/resources/certificateauthority?view=graph-rest-1.0) | Multi-value property representing a list of trusted certificate authorities. | No | No | No |

## Example REST call - Create mutualTlsOauthConfiguration Object
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mutualTlsOauthConfiguration",
  "baseType": "microsoft.graph.trustedCertificateAuthorityBase",
  "openType": false
}
-->
```json
POST https://graph.microsoft.com/v1.0/directory/certificateAuthorities/mutualTlsOauthConfigurations
{
  "displayName": "DoorCamera_Model_X_TrustedCAs",
  "tlsClientAuthParameter": "tls_client_auth_subject_dn",
  "certificateAuthorities": [
    {
      "isRootAuthority": true,
      "certificateRevocationListUrl": "http://contoso.com/root.crl",
      "deltaCertificateRevocationListUrl": null,
      "certificate": "joGrWL+Yqkik/CABWG0d1w....",
      "issuer": "contoso Inc",
      "issuerSubjectkeyIdentifier": "SKI"
    },
    {
      "isRootAuthority": true,
      "certificateRevocationListUrl": "http://contoso.com/root.crl",
      "deltaCertificateRevocationListUrl": null,
      "certificate": "koGrWL+Yqkik/CABWG0d1w....",
      "issuer": "contoso Inc",
      "issuerSubjectkeyIdentifier": "SKI"
    }
  ]
}

HTTP/1.1 201 Created
Location: "https://graph.microsoft.com/v1.0/directory/certificateAuthorities/mutualTlsOauthConfigurations/eec5ba11-2fc0-4113-83a2-ed986ed13cdb"
{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#mutualTlsOauthConfigurations",
  "id":"eec5ba11-2fc0-4113-83a2-ed986ed13cdb",
  "displayName": "DoorCamera_Model_X_TrustedCAs",
  "tlsClientAuthParameter": "tls_client_auth_subject_dn",
  "certificateAuthorities": [
    {
      "isRootAuthority": true,
      "certificateRevocationListUrl": "http://contoso.com/root.crl",
      "deltaCertificateRevocationListUrl": null,
      "certificate": "joGrWL+Yqkik/CABWG0d1w....",
      "issuer": "contoso Inc",
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
