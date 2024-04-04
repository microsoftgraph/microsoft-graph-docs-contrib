---
title: "educationAssignmentSettings resource type"
description: "Specifies class-level assignments settings."
author: "dipakboyed"
ms.localizationpriority: medium
ms.subservice: "education"
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

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the educationAssignmentSettings.|
|submissionAnimationDisabled|Boolean|Indicates whether turn-in celebration animation will be shown. If `true`, the animation won't be shown. The default value is `false`.|

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

