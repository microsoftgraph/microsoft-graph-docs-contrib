---
title: "sectionRoleReferenceValue resource type"
description: " A reference value for a role in a section."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# sectionRoleReferenceValue resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A reference value for a role in a section.

Inherits from [microsoft.graph.industryData.referenceValue](../resources/industrydata-referencevalue.md).

## Properties

| Property | Type   | Description                                                                                                |
| :------- | :----- | :--------------------------------------------------------------------------------------------------------- |
| code     | String | Inherited from [microsoft.graph.industryData.referenceValue](../resources/industrydata-referencevalue.md). |

## Relationships

| Relationship | Type                                                                    | Description                                                                                               |
| :----------- | :---------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------- |
| value        | [referenceDefinition](../resources/industrydata-referencedefinition.md) | Inherited from [microsoft.graph.industryData.referenceValue](../resources/industrydata-referencevalue.md) |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.sectionRoleReferenceValue"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",
  "code": "String"
}
```
