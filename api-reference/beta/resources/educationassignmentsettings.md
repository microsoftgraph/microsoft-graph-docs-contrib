---
title: "educationAssignmentSettings resource type"
description: "Specifies class-level assignments settings."
author: "dipakboyed"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: resourcePageType
---

# educationAssignmentSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies class-level assignments settings.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get educationAssignmentSettings](../api/educationassignmentsettings-get.md)|[educationAssignmentSettings](../resources/educationassignmentsettings.md)|Read the properties and relationships of an [educationAssignmentSettings](../resources/educationassignmentsettings.md) object.|
|[Update educationAssignmentSettings](../api/educationassignmentsettings-update.md)|[educationAssignmentSettings](../resources/educationassignmentsettings.md)|Update the properties of an [educationAssignmentSettings](../resources/educationassignmentsettings.md) object.|
|[List educationGradingCategory](../api/educationassignment-list-gradingcategory.md)|[educationGradingCategory](../resources/educationgradingcategory.md) collection|Get the educationGradingCategory resources from the gradingCategory navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the educationAssignmentSettings.|
|submissionAnimationDisabled|Boolean|Indicates whether turn-in celebration animation will be shown. If `true`, the animation will not be shown. The default value is `false`.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|grading categories|[educationGradingCategory](educationgradingcategory.md) collection| When set, enables users to weight assignments differently when computing a class average grade.|

## JSON representation
The following is a JSON representation of the resource.
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

