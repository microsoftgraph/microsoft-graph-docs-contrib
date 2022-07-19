---
title: "referenceDefinition resource type"
description: "Represents a enumerated reference value."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# referenceDefinition resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a enumerated reference value.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List referenceDefinitions](../api/industrydata-industrydatatenant-list-referencedefinitions.md)|[microsoft.graph.industryData.referenceDefinition](../resources/industrydata-referencedefinition.md) collection|Get a list of the [referenceDefinition](../resources/industrydata-referencedefinition.md) objects and their properties.|
|[Create referenceDefinition](../api/industrydata-industrydatatenant-post-referencedefinitions.md)|[microsoft.graph.industryData.referenceDefinition](../resources/industrydata-referencedefinition.md)|Create a new [referenceDefinition](../resources/industrydata-referencedefinition.md) object.|
|[Get referenceDefinition](../api/industrydata-referencedefinition-get.md)|[microsoft.graph.industryData.referenceDefinition](../resources/industrydata-referencedefinition.md)|Read the properties and relationships of a [referenceDefinition](../resources/industrydata-referencedefinition.md) object.|
|[Update referenceDefinition](../api/industrydata-referencedefinition-update.md)|[microsoft.graph.industryData.referenceDefinition](../resources/industrydata-referencedefinition.md)|Update the properties of a [referenceDefinition](../resources/industrydata-referencedefinition.md) object.|
|[Delete referenceDefinition](../api/industrydata-industrydatatenant-delete-referencedefinitions.md)|None|Deletes a [referenceDefinition](../resources/industrydata-referencedefinition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|code|String|Code value for the definition. Must be unique within the referenceType.|
|createdDateTime|DateTimeOffset|Time the definition was created.|
|isDisabled|Boolean|Indicates whether the definition has been disabled.|
|lastModifiedDateTime|DateTimeOffset|Time the definition was most recently changed.|
|referenceType|String|The categorical type for a collection enumerated values.|
|sortIndex|Int32|Ordering index to present the definitions within a type consistently in user interfaces.|
|source|String|The standards body or organization source which defined the code.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.referenceDefinition",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.referenceDefinition",
  "code": "String",
  "createdDateTime": "String (timestamp)",
  "isDisabled": "Boolean",
  "lastModifiedDateTime": "String (timestamp)",
  "referenceType": "String",
  "sortIndex": "Integer",
  "source": "String"
}
```

