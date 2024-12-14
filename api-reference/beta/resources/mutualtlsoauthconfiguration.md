---
title: "mutualTlsOauthConfiguration resource type"
description: "Represents a list of certificate authorities (CAs) that are authorized to issue certificates for a specific set of objects used for mTLS."
author: "sgeislinger"
ms.localizationpriority: medium
ms.date: 11/20/2024
ms.subservice: "entra-id"
doc_type: resourcePageType
toc.title: "Mutual TLS OAuth configuration"
---

# mutualTlsOauthConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a list of certificate authorities (CAs) that are authorized to issue certificates for a specific set of objects used for mTLS.

This object is typically created by a device authority on their own Entra ID tenant. In some cases, the user might choose to create this object in their Entra ID tenant.

For customers that use first party Azure IoT registries, this object may also be stored in the Microsoft Services tenant.

Inherits from [trustedCertificateAuthorityBase](../resources/trustedcertificateauthoritybase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/certificateauthoritypath-list-mutualtlsoauthconfigurations.md) |[mutualTlsOauthConfiguration](mutualtlsoauthconfiguration.md) collection| Get a list of the available [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md) resources. |
|[Create](../api/certificateauthoritypath-post-mutualtlsoauthconfigurations.md) | [mutualTlsOauthConfiguration](mutualtlsoauthconfiguration.md) | Create a [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md) resource that contains a specified certificate authority object. |
|[Get](../api/mutualtlsoauthconfiguration-get.md)| [mutualTlsOauthConfiguration](mutualtlsoauthconfiguration.md) | Get the properties and relationships of the specified [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md) resource.|
|[Update](../api/mutualtlsoauthconfiguration-update.md) | [mutualTlsOauthConfiguration](mutualtlsoauthconfiguration.md)  | Update the specified [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md) resource.  |
|[Delete](../api/mutualtlsoauthconfiguration-delete.md) | None |Delete the specified [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md) resource.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|certificateAuthorities|[certificateAuthority](../resources/certificateauthority.md) collection| Multi-value property that represents a list of trusted certificate authorities. Inherited from [trustedCertificateAuthorityBase](../resources/trustedcertificateauthoritybase.md). |
|deletedDateTime|DateTimeOffset|Inherited from [trustedCertificateAuthorityBase](../resources/trustedcertificateauthoritybase.md).|
|displayName|String|Friendly name.|
|id|String|The unique identifier for the **mutualTlsOauthConfiguration** object. Inherited from [trustedCertificateAuthorityBase](../resources/trustedcertificateauthoritybase.md).|
|tlsClientAuthParameter|tlsClientRegistrationMetadata | Specifies the field in the certificate that contains the subject ID. The possible values are: `tls_client_auth_subject_dn`, `tls_client_auth_san_dns`, `tls_client_auth_san_uri`, `tls_client_auth_san_ip`, `tls_client_auth_san_email`, `unknownFutureValue`.|

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
  "certificateAuthorities": [{"@odata.type": "microsoft.graph.certificateAuthority"}],
  "deletedDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "tlsClientAuthParameter": "String"
}
```
