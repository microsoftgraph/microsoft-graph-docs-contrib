---
title: "identifierTypeReferenceValue resource type"
description: "Represents a RefIdentifierType typed ReferenceDefinition."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: resourcePageType
---

# identifierTypeReferenceValue resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a RefIdentifierType typed ReferenceDefinition.

Inherits from [referenceValue](industrydata-referencevalue.md).

## Properties

| Property | Type   | Description                                                                                                             |
| :------- | :----- | :---------------------------------------------------------------------------------------------------------------------- |
| code     | String | The code of the desired **referenceDefinition** entry. Inherited from [referenceValue](industrydata-referencevalue.md). |

## Relationships

| Relationship | Type                                                       | Description                                                                                                            |
| :----------- | :--------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------- |
| value        | [referenceDefinition](industrydata-referencedefinition.md) | Reference to the bound **referenceDefinition** entity. Inherited from [referenceValue](industrydata-referencevalue.md) |

## JSON representation

The following is a JSON representation of the resource.

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
