---
title: "educationAiFeedbackAudienceEngagementSettings resource type"
description: "Represents the audience engagement-related feedback types that students should receive from the AI feedback."
author: "GatadiMegha"
ms.date: 09/04/2025
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
toc.title: "Education AI feedback audience engagement settings"
---

# educationAiFeedbackAudienceEngagementSettings resource type

Namespace: microsoft.graph

Represents the audience engagement-related feedback types that students should receive from the AI feedback.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|areEngagementStrategiesEnabled|Boolean|Indicates whether the student should receive feedback on their engagement strategies from the AI feedback.|
|isCallToActionEnabled|Boolean|Indicates whether the student should receive feedback on their call to action from the AI feedback.|
|isEmotionalAndIntellectualAppealEnabled|Boolean|Indicates whether the student should receive feedback on their emotional and intellectual appeal from the AI feedback.|

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

