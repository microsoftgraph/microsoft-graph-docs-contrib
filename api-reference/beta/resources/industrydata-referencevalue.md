---
title: "referenceValue resource type"
description: "An abstract type that represents a pointer to an entry in the referenceDefinitions collection."
author: "mlafleur"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# referenceValue resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents a pointer to an entry in the [referenceDefinitions](industrydata-referencedefinition.md) collection with a specific reference type.

Base type of [identifierTypeReferenceValue](industrydata-identifiertypereferencevalue.md), [roleReferenceValue](industrydata-rolereferencevalue.md), [userMatchTargetReferenceValue](industrydata-usermatchtargetreferencevalue.md), and [yearReferenceValue](industrydata-yearreferencevalue.md).

## Properties

| Property | Type   | Description                                            |
| :------- | :----- | :----------------------------------------------------- |
| code     | String | The code of the desired **referenceDefinition** entry. |

## Relationships

| Relationship | Type                                                       | Description                                            |
| :----------- | :--------------------------------------------------------- | :----------------------------------------------------- |
| value        | [microsoft.graph.industryData.referenceDefinition](industrydata-referencedefinition.md) | Reference to the bound **referenceDefinition** entity. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.referenceValue"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.referenceValue",
  "code": "String"
}
```
