---
title: "yearReferenceValue resource type"
description: "Pointer to a year entry in the referenceDefinition collection."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: resourcePageType
---

# yearReferenceValue resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a pointer to a year entry in the referenceDefinition collection.

Inherits from [referenceValue](../resources/industrydata-referencevalue.md).

## Properties

| Property | Type   | Description                                                                                                                      |
| :------- | :----- | :------------------------------------------------------------------------------------------------------------------------------- |
| code     | String | The code of the desired referenceDefinition entry. Inherited from [referenceValue](../resources/industrydata-referencevalue.md). |

## Relationships

| Relationship | Type                                                                    | Description                                                                                                                     |
| :----------- | :---------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------ |
| value        | [referenceDefinition](../resources/industrydata-referencedefinition.md) | Reference to the bound referenceDefinition entity. Inherited from [referenceValue](../resources/industrydata-referencevalue.md) |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.yearReferenceValue"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.yearReferenceValue",
  "code": "String"
}
```
