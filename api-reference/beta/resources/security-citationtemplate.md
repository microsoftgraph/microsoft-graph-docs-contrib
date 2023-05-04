---
title: "citationTemplate resource type"
description: "The specific rule or regulation created by a jurisdiction used to determine whether certain labels and content should be retained or deleted."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# citationTemplate resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

he specific rule or regulation created by a jurisdiction used to determine whether certain labels and content should be retained or deleted.


Inherits from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List citationTemplates](../api/security-citationtemplate-list.md)|[microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md) collection|Get a list of the [microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md) objects and their properties.|
|[Create citationTemplate](../api/security-citationtemplate-post.md)|[microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md)|Create a new [microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md) object.|
|[Get citationTemplate](../api/security-citationtemplate-get.md)|[microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md)|Read the properties and relationships of a [microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md) object.|
|[Delete citationTemplate](../api/security-citationtemplate-delete.md)|None|Delete a [microsoft.graph.security.citationTemplate](../resources/security-citationtemplate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|citationJurisdiction|String|Represents the jurisdiction or agency that published the citation.|
|citationUrl|String|Represents the URL to the published citation.|
|createdBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|Represents the user who created the citation. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|
|createdDateTime|DateTimeOffset|Represents the date and time in which the citation is created. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|
|displayName|String|Unique string that defines a citation name. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|
|id|String|Unique ID of the citation. Inherited from [microsoft.graph.entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.citationTemplate",
  "baseType": "microsoft.graph.security.filePlanDescriptor",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.citationTemplate",
  "id": "String (identifier)",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "citationUrl": "String",
  "citationJurisdiction": "String"
}
```

