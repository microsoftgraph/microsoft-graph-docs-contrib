---
title: "educationAssignmentSettings resource type"
description: "Specifies class-level assignments settings."
author: "dipakboyed"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
toc.title: Assignment settings
ms.date: 06/10/2024
---

# educationAssignmentSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies class-level assignments settings.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/educationassignmentsettings-get.md)|[educationAssignmentSettings](../resources/educationassignmentsettings.md)|Read the properties and relationships of an [educationAssignmentSettings](../resources/educationassignmentsettings.md) object.|
|[Update](../api/educationassignmentsettings-update.md)|[educationAssignmentSettings](../resources/educationassignmentsettings.md)|Update the properties of an [educationAssignmentSettings](../resources/educationassignmentsettings.md) object.|
|[Add default grading scheme](../api/educationassignmentsettings-put-defaultgradingscheme.md)|[educationGradingScheme](../resources/educationgradingscheme.md)|Add the default [educationGradingScheme](../resources/educationgradingscheme.md) to an **educationAssignmentSettings** object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the **educationAssignmentSettings**.|
|submissionAnimationDisabled|Boolean|Indicates whether turn-in celebration animation is shown. If `true`, the animation doesn't show. The default value is `false`.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|defaultGradingScheme|[educationGradingScheme](educationgradingscheme.md) |The default grading scheme for assignments created in this class. |
|gradingCategories|[educationGradingCategory](educationgradingcategory.md) collection| When set, enables users to weight assignments differently when computing a class average grade.|
|gradingSchemes|[educationGradingScheme](educationgradingscheme.md) collection| The grading schemes that can be attached to assignments created in this class. |

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
  "submissionAnimationDisabled": "Boolean"
}
```

