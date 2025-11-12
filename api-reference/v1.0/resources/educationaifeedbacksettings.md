---
title: "educationAiFeedbackSettings resource type"
description: "Represents the feedback types that students should receive from AI feedback."
author: "GatadiMegha"
ms.date: 09/04/2025
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
toc.title: "Education AI feedback settings"
---

# educationAiFeedbackSettings resource type

Namespace: microsoft.graph

Represents the feedback types that students should receive from AI feedback.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|audienceEngagementSettings|[educationAiFeedbackAudienceEngagementSettings](../resources/educationaifeedbackaudienceengagementsettings.md)|The audience engagement related feedback types that students should receive from the AI feedback.|
|contentSettings|[educationAiFeedbackContentSettings](../resources/educationaifeedbackcontentsettings.md)|The content related feedback types that students should receive from the AI feedback.|
|deliverySettings|[educationAiFeedbackDeliverySettings](../resources/educationaifeedbackdeliverysettings.md)|The delivery related feedback types that students should receive from the AI feedback.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationAiFeedbackSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.educationAiFeedbackSettings",
  "audienceEngagementSettings": {"@odata.type": "microsoft.graph.educationAiFeedbackAudienceEngagementSettings"},
  "contentSettings": {"@odata.type": "microsoft.graph.educationAiFeedbackContentSettings"},
  "deliverySettings": {"@odata.type": "microsoft.graph.educationAiFeedbackDeliverySettings"}  
}
```
