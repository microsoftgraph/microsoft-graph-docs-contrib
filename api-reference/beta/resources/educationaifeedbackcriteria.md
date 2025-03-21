---
title: "educationAiFeedbackCriteria resource type"
description: "The settings for the AI feedback that students should receive."
author: "v-rmanda"
ms.date: 03/20/2025
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
---

# educationAiFeedbackCriteria resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The settings for the AI feedback that students should receive. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|aiFeedbackSettings|[educationAiFeedbackSettings](../resources/educationaifeedbacksettings.md)|The feedback types that students should receive from AI feedback.|
|speechType|educationSpeechType|The type of speech the student is providing. Valid values: `informative`, `personal`, `persuasive`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationAiFeedbackCriteria"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.educationAiFeedbackCriteria",
  "speechType": "String",
  "aiFeedbackSettings": {
    "@odata.type": "microsoft.graph.educationAiFeedbackSettings"
  }
}
```

