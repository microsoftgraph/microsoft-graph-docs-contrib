---
title: "educationAiFeedbackCriteria resource type"
description: "Represents the settings for the AI feedback that students should receive. "
author: "v-rmanda"
ms.date: 03/20/2025
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
toc.title: "Education AI feedback criteria"
---

# educationAiFeedbackCriteria resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the settings for the AI feedback that students should receive. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|aiFeedbackSettings|[educationAiFeedbackSettings](../resources/educationaifeedbacksettings.md)|The feedback types that students should receive from AI feedback.|
|speechType|educationSpeechType|The type of speech the student provides. The possible values are: `informative`, `personal`, `persuasive`, `unknownFutureValue`.|

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
  "aiFeedbackSettings": {"@odata.type": "microsoft.graph.educationAiFeedbackSettings"},
  "speechType": "String"
}
```

