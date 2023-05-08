---
title: "educationGradingCategory resource type"
description: "Add grading categories to the existing class-wide settings to weight assignments differently when computing a class average grade."
author: "AshwaniBansal1"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: resourcePageType
---

# educationGradingCategory resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add grading categories to the existing class-wide settings to weight assignments differently when computing a class average grade.

**Note:** Configure grading categories using [Assignment settings](../resources/educationassignmentsettings.md).

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Add gradingCategory](../api/educationassignment-post-gradingcategory.md) | [gradingCategory](educationgradingcategory.md) | Add a new **gradingCategory**.|
|[Remove gradingCategory](../api/educationassignment-delete-gradingcategory.md) | [educationCategory](educationgradingcategory.md) | Remove existing **gradingCategory**.|
|[Update gradingCategory](../api/educationgradingcategory-update.md) | [educationCategory](educationgradingcategory.md) | Update a single **gradingCategory**.|


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String|The grading category's ID. This separate ID allows teachers to rename a grading category without losing the link to each assignment. Inherited from [entity](../resources/entity.md). Read-only.|
|displayName|String|The name of the grading category.|
|percentageWeight|Int32|The weight of the category; an integer between 0 and 100.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationGradingCategory"
}-->

```json
{
  "@odata.type": "#microsoft.graph.educationGradingCategory",
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
