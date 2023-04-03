---
title: "educationGradingCategory resource type"
description: "Add Grading Categories to the existing class-wide settings to weight assignments differently when computing a class average grade."
author: "AshwaniBansal1"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: resourcePageType
---

# educationGradingCategory resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add Grading Categories to the existing class-wide settings to weight assignments differently when computing a class average grade.

**Note:** Configure grading categories using [Assignment settings](../api/resources/educationassignmentsettings?view=graph-rest-beta).

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Add gradingCategory](../api/educationassignment-add-gradingcategories.md) | [gradingCategory](assignment-gradingcategories.md) | Add a new **gradingCategory**.|
|[Remove gradingCategory](../api/educationassignment-remove-gradingcategories.md) | [educationCategory](assignment-gradingcategories.md) | Remove existing **gradingCategory**.|
|[Update gradingCategory](../api/educationassignment-updatesingle-gradingcategories.md) | [educationCategory](assignment-gradingcategories.md) | Update a single **gradingCategory**.|


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
<<<<<<< HEAD
|id|String|The grading category's ID. This separate ID allows teachers to rename a grading category without losing the link to each assignment. Inherited from entity. Read-only.|
=======
|id|String|The grading category's ID.|
>>>>>>> cd68cf9b7a8dd36135344a2334ee7ebaf5fad6e5
|displayName|String|The name of the grading category.|
|percentageWeight|Int32|The weight of the category; an integer between 0 and 100.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.gradingCategory"
}-->

```json
{
  "id": "String (identifier)",
  "displayName": "String",
  "percentageWeight": "Int32"
}

```

<!-- uuid: 37d99af7-cfc5-4e3b-8566-f7d40e4a2070
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "gradingCategory resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
