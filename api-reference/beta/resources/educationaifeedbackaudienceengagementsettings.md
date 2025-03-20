---
title: "educationAiFeedbackAudienceEngagementSettings resource type"
description: "**TODO: Add Description**"
author: "v-rmanda"
ms.date: 03/20/2025
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
---

# educationAiFeedbackAudienceEngagementSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Properties
|Property|Type|Description|
|:---|:---|:---|
|areEngagementStrategiesEnabled|Boolean|Whether the student should receive feedback on their engagement strategies from the AI feedback.|
|isCallToActionEnabled|Boolean|Whether the student should receive feedback on their call to action from the AI feedback.|
|isEmotionalAndIntellectualAppealEnabled|Boolean|Whether the student should receive feedback on their emotional and intellectual appeal from the AI feedback.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationAiFeedbackAudienceEngagementSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.educationAiFeedbackAudienceEngagementSettings",
  "areEngagementStrategiesEnabled": "Boolean",
  "isEmotionalAndIntellectualAppealEnabled": "Boolean",
  "isCallToActionEnabled": "Boolean"
}
```

