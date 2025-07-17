---
title: "rubricQualityFeedbackModel resource type"
description: "Feedback related to a specific quality of an educationRubric"
ms.localizationpriority: medium
author: "dipakboyed"
ms.subservice: "education"
doc_type: "resourcePageType"
ms.date: 07/23/2024
---

# rubricQualityFeedbackModel resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Feedback related to a specific [quality](rubricquality.md) of an [educationRubric](educationrubric.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|feedback|[itemBody](itembody.md)|Specific feedback for one quality of this rubric.|
|qualityId|String|The ID of the [rubricQuality](rubricquality.md) that this feedback is related to.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.rubricQualityFeedbackModel",
  "baseType": null
}-->

```json
{
  "feedback": {"@odata.type": "microsoft.graph.itemBody"},
  "qualityId": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "rubricQualityFeedbackModel resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

