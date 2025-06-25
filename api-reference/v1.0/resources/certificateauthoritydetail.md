---
title: "certificateAuthorityDetail resource type"
description: "The properties of each certificate authority object contained in the public key infrastructure resource."
author: "vimranga"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 06/23/2025
---

# certificateAuthorityDetail resource type

Namespace: microsoft.graph

The properties of each certificate authority object contained in the [certificateBasedAuthPki](../resources/certificateBasedAuthPki.md) resource.


Inherits from [directoryObject](../resources/directoryobject.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/certificatebasedauthpki-list-certificateauthorities.md)|[certificateAuthorityDetail](../resources/certificateauthoritydetail.md) collection|Get a list of the [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) objects and their properties.|
|[Create](../api/certificatebasedauthpki-post-certificateauthorities.md)|[certificateAuthorityDetail](../resources/certificateauthoritydetail.md)|Create a new [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) object.|
|[Get](../api/certificateauthoritydetail-get.md)|[certificateAuthorityDetail](../resources/certificateauthoritydetail.md)|Read the properties and relationships of a [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) object.|
|[Update](../api/certificateauthoritydetail-update.md)|[certificateAuthorityDetail](../resources/certificateauthoritydetail.md)|Update the properties of a [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) object.|
|[Delete](../api/certificatebasedauthpki-delete-certificateauthorities.md)|None|Delete a [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) object.|
| [List deleted items](../api/directory-deleteditems-list.md) | [directoryObject](directoryobject.md) collection | Retrieve the [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) objects deleted in the tenant in the last 30 days. |
| [Get deleted item](../api/directory-deleteditems-get.md) | [directoryObject](directoryobject.md) collection | Retrieve a deleted [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) object by ID. |
| [Restore deleted item](../api/directory-deleteditems-restore.md) | [directoryObject](directoryobject.md) collection | Restore a [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) object deleted in the tenant in the last 30 days. |
| [Permanently delete item](../api/directory-deleteditems-delete.md) | [directoryObject](directoryobject.md) collection | Permanently delete a deleted [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) object from the tenant. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|certificate|Binary|The public key of the certificate authority.|
|certificateAuthorityType|certificateAuthorityType|The type of certificate authority. The possible values are: `root`, `intermediate`, `unknownFutureValue`. Supports `$filter` (`eq`).|
|certificateRevocationListUrl|String|The URL to check if the certificate is revoked.|
|createdDateTime|DateTimeOffset|The date and time when the certificate authority was created.|
|deletedDateTime|DateTimeOffset|The date and time when the certificate authority was soft deleted. Inherited from base class and `null` for objects that are not deleted. Inherited from [directoryObject](../resources/directoryobject.md).|
|deltacertificateRevocationListUrl|String|The URL to check to find out whether the certificate is revoked.|
|displayName|String|The display name of the certificate authority.|
|expirationDateTime|DateTimeOffset|The date and time when the certificate authority expires. Supports `$filter` (`eq`) and `$orderby`.|
|id|String|The ID of the certificate authority. Inherited from [entity](../resources/entity.md).|
|isIssuerHintEnabled|Boolean|Indicates whether the certificate picker presents the certificate authority to the user to use for authentication. Default value is `false`. Optional.|
|issuer|String|The issuer of the certificate authority.|
|issuerSubjectKeyIdentifier|String|The subject key identifier of certificate authority.|
|thumbprint|String|The thumbprint of certificate authority certificate. Supports `$filter` (`eq`, `startswith`).|

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