---
title: "authorityTemplate resource type"
description: "Specifies the underlying authority that describes the type of content to be retained and its retention schedule."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# authorityTemplate resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the underlying authority that describes the type of content to be retained and its retention schedule.

Inherits from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptorTemplate.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authorities](../api/security-labelsroot-list-authorities.md)|[microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md) collection|Get a list of the [microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md) objects and their properties.|
|[Create authorities](../api/security-labelsroot-post-authorities.md)|[microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md)|Create a new [microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md) object.|
|[Get authorities](../api/security-authoritytemplate-get.md)|[microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md)|Read the properties and relationships of a [microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md) object.|
|[Delete authorities](../api/security-labelsroot-delete-authorities.md)|None|Delete a [microsoft.graph.security.authorityTemplate](../resources/security-authoritytemplate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|Represents the user who created the authority. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|
|createdDateTime|DateTimeOffset|Represents the date and time in which the authority is created. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|
|displayName|String|Unique string that defines an authority name. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|
|id|String|Unique ID of the authority. Inherited from [microsoft.graph.entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.authorityTemplate",
  "baseType": "microsoft.graph.security.filePlanDescriptor",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.authorityTemplate",
  "id": "String (identifier)",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)"
}
```

