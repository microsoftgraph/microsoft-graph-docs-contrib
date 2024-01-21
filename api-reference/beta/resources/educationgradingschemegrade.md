---
title: "educationGradingSchemeGrade resource type"
description: "**TODO: Add Description**"
author: "v-rmanda"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: resourcePageType
---

# educationGradingSchemeGrade resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultPercentage|Single|The mid point of the grade's range.|
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

