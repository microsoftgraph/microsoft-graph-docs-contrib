---
title: "identifierTypeReferenceValue resource type"
description: "Represents a pointer to a RefIdentifierType entry in a collection of referenceDefinition objects."
author: "mlafleur"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# identifierTypeReferenceValue resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a pointer to a `RefIdentifierType` entry in a collection of [referenceDefinition](industrydata-referencedefinition.md) objects.

Inherits from [referenceValue](industrydata-referencevalue.md).

## Properties

| Property | Type   | Description                                                                                                             |
| :------- | :----- | :---------------------------------------------------------------------------------------------------------------------- |
| code     | String | The code of the desired **referenceDefinition** entry. Inherited from [referenceValue](industrydata-referencevalue.md). |

## Relationships

| Relationship | Type                                                                                    | Description                                                                                                            |
| :----------- | :-------------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------- |
| value        | [microsoft.graph.industryData.referenceDefinition](industrydata-referencedefinition.md) | Reference to the bound **referenceDefinition** entity. Inherited from [referenceValue](industrydata-referencevalue.md) |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.identifierTypeReferenceValue"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.identifierTypeReferenceValue",
  "code": "String"
}
```
