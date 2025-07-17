---
title: "rubricQualitySelectedColumnModel resource type"
description: "Indicates the rubricLevel selected by the teacher when grading an educationRubric."
ms.localizationpriority: medium
author: "sharad-sharma-msft"
ms.subservice: "education"
doc_type: "resourcePageType"
ms.date: 08/08/2024
---

# rubricQualitySelectedColumnModel resource type

Namespace: microsoft.graph

Indicates the [rubricLevel](rubriclevel.md) selected by the teacher when grading an [educationRubric](educationrubric.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|columnId|String|ID of the selected level for this quality.|
|qualityId|String|ID of the associated quality.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.rubricQualitySelectedColumnModel",
  "baseType": null
}-->

```json
{
  "columnId": "String",
  "qualityId": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "rubricQualitySelectedColumnModel resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

