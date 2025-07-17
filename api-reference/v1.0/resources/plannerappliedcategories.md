---
title: "plannerAppliedCategories resource type"
description: "The **AppliedCategoriesCollection** resource represents the collection of categories (or labels) that have been applied to a task. It's part of the plannerTask object."
ms.localizationpriority: medium
author: "TarkanSevilmis"
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# plannerAppliedCategories resource type

Namespace: microsoft.graph


The **AppliedCategoriesCollection** resource represents the collection of categories (or labels) that have been applied to a task. It's part of the [plannerTask](plannertask.md) object.
There can be up to six categories applied to a task. Category descriptions, for example, `category1`, `category2` etc., are part of the [plan details](plannerplandetails.md) object. This is an open type.

## Properties
Properties of an Open Type can be defined by the client. In this case though, the client must provide `category1`, `category2`, `category3`, `category4`, `category5` and/or `category6` as properties with their values being the `true` Boolean when the corresponding categories are applied on the task. When they don't apply, properties are automatically removed by setting their values to the `false` Boolean. 

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "openType": true,
  "optionalProperties": [ "String-value" ],
  "@odata.type": "microsoft.graph.plannerAppliedCategories"
}-->

```json
{
  "String-value": true
}
```

Example: 

```json
{
  "category1": true,
  "category3": true,
  "category5": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerAppliedCategories resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

