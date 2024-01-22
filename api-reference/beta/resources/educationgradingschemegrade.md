---
title: "educationGradingSchemeGrade resource type"
description: "Adding Grading Shemes to the existing class-wide Settings."
author: "v-rmanda"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: resourcePageType
---

# educationGradingSchemeGrade resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Adding Grading Shemes to the existing class-wide Settings.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultPercentage|Single|The mid point of the grade's range. |    No    |    No    | If the teacher assigns a grade, we need to compute how many points they've assigned. By default, if you give an A (with range 90-100%), we'll assign 95% of the max points. But you can change this per your preference / school policy.|
|displayName|String|The name of the grading scheme.|
|minPercentage|Single|The minimum percentage of the total points needed to achieve this grade.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationGradingSchemeGrade"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.educationGradingSchemeGrade",
  "displayName": "String",
  "minPercentage": "Single",
  "defaultPercentage": "Single"
}
```

