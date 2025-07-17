---
title: "rubricCriterion resource type"
description: "A criterion of a rubric"
ms.localizationpriority: medium
author: "dipakboyed"
ms.subservice: "education"
doc_type: "resourcePageType"
ms.date: 07/23/2024
---

# rubricCriterion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A criterion of a rubric. See [educationRubric](educationrubric.md) for a description of the relationship between rubric *qualities*, *levels*, and *criteria*.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|description|[itemBody](itembody.md)|The description of this criterion.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.rubricCriterion",
  "baseType": null
}-->

```json
{
  "description": {"@odata.type": "microsoft.graph.itemBody"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "rubricCriterion resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

