---
title: "educationGradingScheme resource type"
description: "Represents a custom scheme for grading."
author: "GatadiMegha"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
toc.title: Grading scheme
ms.date: 09/19/2025
---

# educationGradingScheme resource type

Namespace: microsoft.graph

Represents a custom scheme for grading.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/educationassignmentsettings-post-gradingschemes.md)|[educationGradingScheme](../resources/educationgradingscheme.md)|Create a new [educationGradingScheme](../resources/educationgradingscheme.md) on an [educationClass](../resources/educationclass.md).|
|[Get](../api/educationgradingscheme-get.md)|[educationGradingScheme](../resources/educationgradingscheme.md)|Read the properties and relationships of an [educationGradingScheme](../resources/educationgradingscheme.md) object.|
|[Update](../api/educationgradingscheme-update.md)|[educationGradingScheme](../resources/educationgradingscheme.md)|Update the properties of an [educationGradingScheme](../resources/educationgradingscheme.md) object.|
|[Delete](../api/educationgradingscheme-delete.md)|None|Delete an [educationGradingScheme](../resources/educationgradingscheme.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the grading scheme. |
|grades|[educationGradingSchemeGrade](../resources/educationgradingschemegrade.md) collection|The grades that make up the scheme.|
|hidePointsDuringGrading|Boolean|The display setting for the UI. Indicates whether teachers can grade with points in addition to letter grades.|
|id|String|The ID of the grading scheme. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.educationGradingScheme",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.educationGradingScheme",
  "displayName": "String",
  "grades": [{"@odata.type": "microsoft.graph.educationGradingSchemeGrade"}],
  "hidePointsDuringGrading": "Boolean",
  "id": "String (identifier)"
}
```

