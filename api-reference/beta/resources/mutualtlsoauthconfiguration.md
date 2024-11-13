---
title: "mutualTlsOauthConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# mutualTlsOauthConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [trustedCertificateAuthorityBase](../resources/trustedcertificateauthoritybase.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/certificateauthoritypath-list-mutualtlsoauthconfigurations.md)|[mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md) collection|Get a list of the mutualTlsOauthConfiguration objects and their properties.|
|[Create](../api/certificateauthoritypath-post-mutualtlsoauthconfigurations.md)|[mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md)|Create a new mutualTlsOauthConfiguration object.|
|[Get](../api/mutualtlsoauthconfiguration-get.md)|[mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md)|Read the properties and relationships of a mutualTlsOauthConfiguration object.|
|[Update](../api/mutualtlsoauthconfiguration-update.md)|[mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md)|Update the properties of a mutualTlsOauthConfiguration object.|
|[Delete](../api/certificateauthoritypath-delete-mutualtlsoauthconfigurations.md)|None|Delete a mutualTlsOauthConfiguration object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|certificateAuthorities|[certificateAuthority](../resources/certificateauthority.md) collection|**TODO: Add Description** Inherited from [trustedCertificateAuthorityBase](../resources/trustedcertificateauthoritybase.md).|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|tlsClientAuthParameter|tlsClientRegistrationMetadata|**TODO: Add Description**.The possible values are: `tls_client_auth_subject_dn`, `tls_client_auth_san_dns`, `tls_client_auth_san_uri`, `tls_client_auth_san_ip`, `tls_client_auth_san_email`, `unknownFutureValue`.|

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
  "deletedDateTime": "String (timestamp)",
  "certificateAuthorities": [
    {
      "@odata.type": "microsoft.graph.certificateAuthority"
    }
  ],
  "displayName": "String",
  "tlsClientAuthParameter": "String"
}
```

