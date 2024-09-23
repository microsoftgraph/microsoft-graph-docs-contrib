---
title: "certificateAuthorityDetail resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# certificateAuthorityDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [directoryObject](../resources/directoryobject.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/certificatebasedauthpki-list-certificateauthorities.md)|[certificateAuthorityDetail](../resources/certificateauthoritydetail.md) collection|Get a list of the [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) objects and their properties.|
|[Create](../api/certificatebasedauthpki-post-certificateauthorities.md)|[certificateAuthorityDetail](../resources/certificateauthoritydetail.md)|Create a new [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) object.|
|[Get](../api/certificateauthoritydetail-get.md)|[certificateAuthorityDetail](../resources/certificateauthoritydetail.md)|Read the properties and relationships of a [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) object.|
|[Update](../api/certificateauthoritydetail-update.md)|[certificateAuthorityDetail](../resources/certificateauthoritydetail.md)|Update the properties of a [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) object.|
|[Delete](../api/certificatebasedauthpki-delete-certificateauthorities.md)|None|Delete a [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|certificate|Binary|The public key of the certificate authority.|
|certificateAuthorityType|certificateAuthorityType|The type of certificate authority whether `root` or `intermediate`. The possible values are: `root`, `intermediate`, `unknownFutureValue`.|
|certificateRevocationListUrl|String|The URL to check if the certificate is revoked|
|createdDateTime|DateTimeOffset|The creation DateTime of the certificate authority.|
|deletedDateTime|DateTimeOffset|The date time when the object was soft deleted. Inherited from base class and `null` for objects that aren't deleted. Inherited from [directoryObject](../resources/directoryobject.md).|
|deltacertificateRevocationListUrl|String|The URL to check if the certificate is revoked.|
|displayName|String|**TODO: Add Description**|
|expirationDateTime|DateTimeOffset|The expirationTime of the certificate authority.|
|id|String|The id of the certificateAuthority entity. Inherited from [entity](../resources/entity.md).|
|isIssuerHintEnabled|Boolean|If `true` the certificate authority is enabled for the issuer hint feature where it's presented to the user in the certificate picker to be used for authentication. `false` by default.|
|issuer|String|The name of the certificate authority.|
|issuerSubjectKeyIdentifier|String|The subject key identifier of certificate authority.|
|thumbprint|String|The thumbprint of the certificate authority public certificate.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.certificateAuthorityDetail",
  "baseType": "microsoft.graph.directoryObject",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.certificateAuthorityDetail",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "certificateAuthorityType": "String",
  "certificate": "Binary",
  "displayName": "String",
  "issuer": "String",
  "issuerSubjectKeyIdentifier": "String",
  "createdDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "thumbprint": "String",
  "certificateRevocationListUrl": "String",
  "deltacertificateRevocationListUrl": "String",
  "isIssuerHintEnabled": "Boolean"
}
```

