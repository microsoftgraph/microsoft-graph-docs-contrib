---
title: "roleReferenceValue resource type"
description: "Represents a pointer to a RefRole entry in a collection of referenceDefinition objects."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# roleReferenceValue resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a pointer to a `RefRole` entry in a collection of [referenceDefinition](industrydata-referencedefinition.md) objects.

Inherits from [referenceValue](industrydata-referencevalue.md).

## Properties

| Property | Type   | Description                                                                                                                                                                          |
| :------- | :----- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| code     | String | The code of the desired [referenceDefinition](industrydata-referencedefinition.md) entry. Inherited from [referenceValue](industrydata-referencevalue.md). |

## Relationships

| Relationship | Type                                                                    | Description                                                                                                                          |
| :----------- | :---------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------------- |
| value        | [microsoft.graph.industryData.referenceDefinition](industrydata-referencedefinition.md) | Reference to the bound **referenceDefinition** entity. Inherited from [referenceValue](industrydata-referencevalue.md). |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.roleReferenceValue"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.roleReferenceValue",
  "code": "String"
}
```
