---
title: "educationGradingSchemeGrade resource type"
description: "Represents an individual grade range that contributes to a grading scheme."
author: "v-rmanda"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: resourcePageType
---

# educationGradingSchemeGrade resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an individual grade range that contributes to a grading scheme.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultPercentage|Int32|The midpoint of the grade range. |
|displayName|String|The name of the grading scheme.|
|minPercentage|Int32|The minimum percentage of the total points needed to achieve this grade.|

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
  "minPercentage": "Int32",
  "defaultPercentage": "Int32"
}
```

