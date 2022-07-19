---
title: "sourceSystemDefinition resource type"
description: "Representation of an external source of data in the real world."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# sourceSystemDefinition resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Representation of an external source of data in the real world.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List sourceSystemDefinitions](../api/industrydata-industrydataconnector-list-sourcesystem.md)|[microsoft.graph.industryData.sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) collection|Get a list of the [sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) objects and their properties.|
|[Create sourceSystemDefinition](../api/industrydata-industrydataconnector-post-sourcesystem.md)|[microsoft.graph.industryData.sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md)|Create a new [sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) object.|
|[Get sourceSystemDefinition](../api/industrydata-sourcesystemdefinition-get.md)|[microsoft.graph.industryData.sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md)|Read the properties and relationships of a [sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) object.|
|[Update sourceSystemDefinition](../api/industrydata-sourcesystemdefinition-update.md)|[microsoft.graph.industryData.sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md)|Update the properties of a [sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) object.|
|[Delete sourceSystemDefinition](../api/industrydata-industrydataconnector-delete-sourcesystem.md)|None|Deletes a [sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the source system.|
|userMatchingSettings|[microsoft.graph.industryData.userMatchingSetting](../resources/industrydata-usermatchingsetting.md) collection|A collection of user matching settings by roleGroup.|
|vendor|String|Name of the vendor who supplies the source system.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.sourceSystemDefinition",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.sourceSystemDefinition",
  "displayName": "String",
  "userMatchingSettings": [
    {
      "@odata.type": "microsoft.graph.industryData.userMatchingSetting"
    }
  ],
  "vendor": "String"
}
```

