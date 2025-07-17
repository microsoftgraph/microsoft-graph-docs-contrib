---
title: "rubricQuality resource type"
description: "A quality of a rubric"
ms.localizationpriority: medium
author: "dipakboyed"
ms.subservice: "education"
doc_type: "resourcePageType"
ms.date: 07/23/2024
---

# rubricQuality resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A quality of a rubric. See [educationRubric](educationrubric.md) for a description of the relationship between rubric *qualities*, *levels*, and *criteria*.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|criteria|[rubricCriterion](rubriccriterion.md) collection|The collection of criteria for this rubric quality.|
|description|[itemBody](itembody.md)|The description of this rubric quality.|
|displayName|String|The name of this rubric quality.|
|qualityId|String|The ID of this resource.|
|weight|Single|If present, a numerical weight for this quality.  Weights must add up to 100.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.rubricQuality",
  "baseType": null
}-->

```json
{
  "criteria": [{"@odata.type": "microsoft.graph.rubricCriterion"}],
  "description": {"@odata.type": "microsoft.graph.itemBody"},
  "displayName": "String",
  "qualityId": "String",
  "weight": "Double"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "rubricQuality resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

