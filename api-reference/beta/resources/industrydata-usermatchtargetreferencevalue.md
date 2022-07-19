---
title: "userMatchTargetReferenceValue resource type"
description: "Represents a RefUserMatchTarget typed ReferenceDefinition."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# userMatchTargetReferenceValue resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a RefUserMatchTarget typed ReferenceDefinition.


Inherits from [referenceValue](../resources/industrydata-referencevalue.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|code|String|The code of the desired referenceDefinition entry. Inherited from [referenceValue](../resources/industrydata-referencevalue.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|value|[referenceDefinition](../resources/industrydata-referencedefinition.md)|Reference to the bound referenceDefinition entity. Inherited from [referenceValue](../resources/industrydata-referencevalue.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.userMatchTargetReferenceValue"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.userMatchTargetReferenceValue",
  "code": "String"
}
```

