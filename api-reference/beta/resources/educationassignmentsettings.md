---
title: "educationAssignmentSettings resource type"
description: "Specifies class-level assignments settings"
author: "dipakboyed"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# educationAssignmentSettings resource type

Namespace: microsoft.graph

Specifies class-level assignments settings

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get educationAssignmentSettings](../api/educationassignmentsettings-get.md)|[educationAssignmentSettings](../resources/educationassignmentsettings.md)|Read the properties and relationships of an [educationAssignmentSettings](../resources/educationassignmentsettings.md) object.|
|[Update educationAssignmentSettings](../api/educationassignmentsettings-update.md)|[educationAssignmentSettings](../resources/educationassignmentsettings.md)|Update the properties of an [educationAssignmentSettings](../resources/educationassignmentsettings.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|submissionAnimationDisabled|Boolean|setting - When true turn-in animation celebration will not be shown. Default value - false.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.educationAssignmentSettings",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "submissionAnimationDisabled": false
}
```

