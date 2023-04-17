---
title: "authorityTemplate resource type"
description: "Represents the file plan descriptor of type authority for retention labels."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# authorityTemplate resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the authority file plan descriptor for retention labels.

Inherits from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authorityTemplates](../api/security-fileplandescriptor-list-authoritytemplate.md)|[microsoft.graph.security.authorityTemplate](../resources/security-fileplandescriptor-authoritytemplate.md) collection|Get a list of the [microsoft.graph.security.authorityTemplate](../resources/security-fileplandescriptor-authoritytemplate.md) objects and their properties.|
|[Create authorityTemplate](../api/security-fileplandescriptor-post-authoritytemplate.md)|[microsoft.graph.security.authorityTemplate](../resources/security-fileplandescriptor-authoritytemplate.md)|Create a new [microsoft.graph.security.authorityTemplate](../resources/security-fileplandescriptor-authoritytemplate.md) object.|
|[Get authorityTemplate](../api/security-fileplandescriptor-authoritytemplate-get.md)|[microsoft.graph.security.authorityTemplate](../resources/security-fileplandescriptor-authoritytemplate.md)|Read the properties and relationships of a [microsoft.graph.security.authorityTemplate](../resources/security-fileplandescriptor-authoritytemplate.md) object.|
|[Delete authorityTemplate](../api/security-fileplandescriptor-delete-authoritytemplate.md)|None|Delete a [microsoft.graph.security.authorityTemplate](../resources/security-fileplandescriptor-authoritytemplate.md) object.|

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

