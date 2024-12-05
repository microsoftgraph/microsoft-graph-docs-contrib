---
title: "mutualTlsOauthConfiguration resource type"
description: "mutualTlsOauthConfiguration object represents list of certificate authorities used for mTls Auth for device objects."
author: "sgeislinger"
ms.localizationpriority: medium
ms.date: 11/20/2024
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# mutualTlsOauthConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a list of Certificate Authorities (CAs) that are permitted to issue certificates for a particular set of objects that are used for mTLS.

This object is typically created by a device authority on their own EntraId tenant. In some cases, the user might choose to create this object in their EntraId tenant.

For customers that use first party Azure IoT registries, this object may also be stored in the Microsoft Services tenant.

Inherits from [trustedCertificateAuthorityBase](../resources/trustedcertificateauthoritybase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/certificateauthoritypath-list-mutualtlsoauthconfigurations.md) |[mutualTlsOauthConfiguration](mutualtlsoauthconfiguration.md) collection| Retrieve a list of mutualTlsOauthConfiguration registered in the directory. |
|[Create](../api/certificateauthoritypath-post-mutualtlsoauthconfigurations.md) | [mutualTlsOauthConfiguration](mutualtlsoauthconfiguration.md) | Create mutualTlsOauthConfiguration object. |
|[Get](../api/mutualtlsoauthconfiguration-get.md)| [mutualTlsOauthConfiguration](mutualtlsoauthconfiguration.md) | Read properties and relationships of mutualTlsOauthConfiguration object.|
|[Update](../api/mutualtlsoauthconfiguration-update.md) | [mutualTlsOauthConfiguration](mutualtlsoauthconfiguration.md)  | Update the properties of the mutualTlsOauthConfiguration object.  |
|[Delete](../api/certificateauthoritypath-delete-mutualtlsoauthconfigurations.md) | None |Delete the mutualTlsOauthConfiguration object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|`displayName`|String|Friendly name|
|deletedDateTime|DateTimeOffset|Inherited from [directoryObject](../resources/directoryobject.md).|
|`tlsClientAuthParameter`|[tlsClientRegistrationMetadata](../resources/enums.md#tlsclientregistrationmetadata-values) | Specifies which field in the certificate contains the subject ID. The possible values are: `tls_client_auth_subject_dn`, `tls_client_auth_san_dns`, `tls_client_auth_san_uri`, `tls_client_auth_san_ip`, `tls_client_auth_san_email`, `unknownFutureValue`.|
|`certificateAuthorities`|[Collection(microsoft.graph.certificateAuthority)](../resources/certificateauthority.md) | Multi-value property representing a list of trusted certificate authorities. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mutualTlsOauthConfiguration",
  "baseType": "microsoft.graph.trustedCertificateAuthorityBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mutualTlsOauthConfiguration",
  "id": "String (identifier)",
  "deletedDateTime": null,
  "certificateAuthorities": [
    {
      "@odata.type": "microsoft.graph.certificateAuthority"
    }
  ],
  "displayName": "String",
  "tlsClientAuthParameter": "String"
}
```

## Example REST call - Create mutualTlsOauthConfiguration Object

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
      "issuer": "CN=certauthority.com, OU=IoT Org, O=Microsoft Corporation, L=Redmond, S=WA, C=US",
      "issuerSki": "74B99F09035C525B1B4A0FE1C9ACA70218C65B71"
    },
    {
      {
      "isRootAuthority": true,
      "certificateRevocationListUrl": "http://contoso.com/root.crl",
      "deltaCertificateRevocationListUrl": null,
      "certificate": "koGrWL+Yqkik/CABWG0d1w....",
      "issuer": "CN=certauthority.com, OU=IoT Org, O=Microsoft Corporation, L=Redmond, S=WA, C=US",
      "issuerSki": "74B99F09035C525B1B4A0FE1C9ACA70218C65B71"
    }
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
      "issuer": "CN=certauthority.com, OU=IoT Org, O=Microsoft Corporation, L=Redmond, S=WA, C=US",
      "issuerSki": "74B99F09035C525B1B4A0FE1C9ACA70218C65B71"
    },
    {
      "isRootAuthority": true,
      "certificateRevocationListUrl": "http://digicert.com/root.crl",
      "deltaCertificateRevocationListUrl": null,
      "certificate": "koGrWL+Yqkik/CABWG0d1w....",
      "issuer": "CN=certauthority.com, OU=IoT Org, O=Microsoft Corporation, L=Redmond, S=WA, C=US",
      "issuerSki": "74B99F09035C525B1B4A0FE1C9ACA70218C65B71"
    }
  ]
}
```
