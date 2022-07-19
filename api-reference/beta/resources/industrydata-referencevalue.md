---
title: "referenceValue resource type"
description: "Represents a pointer to an entry in the referenceDefinitions collection."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# referenceValue resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a pointer to an entry in the referenceDefinitions collection.
This is an abstract type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|code|String|The code of the desired referenceDefinition entry.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|value|[referenceDefinition](../resources/industrydata-referencedefinition.md)|Reference to the bound referenceDefinition entity.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.referenceValue"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.referenceValue",
  "code": "String"
}
```

