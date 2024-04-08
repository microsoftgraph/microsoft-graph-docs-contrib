---
title: "educationGradingCategory resource type"
description: "Represents the weighted contribution of an assignment to a class average grade."
author: "v-rmanda"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
---

# educationGradingCategory resource type

Namespace: microsoft.graph


Represents the weighted contribution of an assignment to a class average grade.

>**Note:** Configure grading categories by using [Assignment settings](../resources/educationassignmentsettings.md).

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Add gradingCategory](../api/educationassignment-post-gradingcategories.md) | [gradingCategory](educationgradingcategory.md) | Add a new **gradingCategory**.|
|[Remove gradingCategory](../api/educationassignment-delete-gradingcategory.md) | [educationCategory](educationgradingcategory.md) | Remove existing **gradingCategory**.|
|[Update gradingCategory](../api/educationgradingcategory-update.md) | [educationCategory](educationgradingcategory.md) | Update a single **gradingCategory**.|


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String|The ID of the grading category ID. This separate ID allows teachers to rename a grading category without losing the link to each assignment. Inherited from [entity](../resources/entity.md). Read-only.|
|displayName|String|The name of the grading category.|
|percentageWeight|Int32|The weight of the category; an integer between 0 and 100.|

## JSON representation

The following JSON representation shows the resource type.

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
