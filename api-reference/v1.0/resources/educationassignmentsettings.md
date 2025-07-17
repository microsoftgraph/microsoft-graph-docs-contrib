---
title: "educationAssignmentSettings resource type"
description: "Specifies class-level assignments settings."
author: "sharad-sharma-msft"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
toc.title: Assignment settings
ms.date: 06/10/2024
---

# educationAssignmentSettings resource type

Namespace: microsoft.graph

Specifies class-level assignments settings.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get educationAssignmentSettings](../api/educationassignmentsettings-get.md)|[educationAssignmentSettings](../resources/educationassignmentsettings.md)|Read the properties and relationships of an [educationAssignmentSettings](../resources/educationassignmentsettings.md) object.|
|[Update educationAssignmentSettings](../api/educationassignmentsettings-update.md)|[educationAssignmentSettings](../resources/educationassignmentsettings.md)|Update the properties of an [educationAssignmentSettings](../resources/educationassignmentsettings.md) object.|
|[Update educationGradingCategory](../api/educationgradingcategory-update.md)|[educationGradingCategory](../resources/educationgradingcategory.md)|Update the gradingCategory on the assignment settings.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the educationAssignmentSettings.|
|submissionAnimationDisabled|Boolean|Indicates whether to show the turn-in celebration animation. If `true`, indicates to skip the animation. The default value is `false`.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|gradingCategories|[educationGradingCategory](educationgradingcategory.md) collection| When set, enables users to weight assignments differently when computing a class average grade.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.educationAssignmentSettings",
  "openType": false
}
-->
``` json
{
  "id": "String (identifier)",
  "submissionAnimationDisabled": false
}
```

