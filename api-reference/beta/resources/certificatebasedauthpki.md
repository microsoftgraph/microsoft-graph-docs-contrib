---
title: "certificateBasedAuthPki resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# certificateBasedAuthPki resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [directoryObject](../resources/directoryobject.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/publickeyinfrastructureroot-list-certificatebasedauthconfigurations.md)|[certificateBasedAuthPki](../resources/certificatebasedauthpki.md) collection|Get a list of the [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) objects and their properties.|
|[Create](../api/publickeyinfrastructureroot-post-certificatebasedauthconfigurations.md)|[certificateBasedAuthPki](../resources/certificatebasedauthpki.md)|Create a new [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) object.|
|[Get](../api/certificatebasedauthpki-get.md)|[certificateBasedAuthPki](../resources/certificatebasedauthpki.md)|Read the properties and relationships of a [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) object.|
|[Update](../api/certificatebasedauthpki-update.md)|[certificateBasedAuthPki](../resources/certificatebasedauthpki.md)|Update the properties of a [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) object.|
|[Delete](../api/publickeyinfrastructureroot-delete-certificatebasedauthconfigurations.md)|None|Delete a [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|The date time when the object was soft deleted. Inherited from base class and `null` for objects that are not deleted. Inherited from [directoryObject](../resources/directoryobject.md).|
|displayName|String|The name of the certificateBasedAuthPki entity|
|id|String|The id of the certificateBasedAuthPki entity. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|Date time the certificateBasedAuthPki object of its related certificate authorities were modified|
|status|String|The status of any asynchronous jobs run on the certificateBasedAuthPki entity which can be upload or delete|
|statusDetails|String|Property that provides additional information of the upload/delete operation of PKI|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|certificateAuthorities|[certificateAuthorityDetail](../resources/certificateauthoritydetail.md) collection|The collection of certificate authorities contained in this public key infrastructure resource.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.certificateBasedAuthPki",
  "baseType": "microsoft.graph.directoryObject",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.certificateBasedAuthPki",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "displayName": "String",
  "status": "String",
  "statusDetails": "String",
  "lastModifiedDateTime": "String (timestamp)"
}
```

