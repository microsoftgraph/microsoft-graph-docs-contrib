---
title: "educationAiFeedbackSettings resource type"
description: "The feedback types that students should receive from AI feedback."
author: "v-rmanda"
ms.date: 03/20/2025
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
---

# educationAiFeedbackSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The feedback types that students should receive from AI feedback.


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
  "deliverySettings": {
    "@odata.type": "microsoft.graph.educationAiFeedbackDeliverySettings"
  },
  "contentSettings": {
    "@odata.type": "microsoft.graph.educationAiFeedbackContentSettings"
  },
  "audienceEngagementSettings": {
    "@odata.type": "microsoft.graph.educationAiFeedbackAudienceEngagementSettings"
  }
}
```

