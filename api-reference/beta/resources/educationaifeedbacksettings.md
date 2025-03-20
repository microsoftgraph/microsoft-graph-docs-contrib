---
title: "educationAiFeedbackSettings resource type"
description: "**TODO: Add Description**"
author: "v-rmanda"
ms.date: 03/20/2025
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
---

# educationAiFeedbackSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Properties
|Property|Type|Description|
|:---|:---|:---|
|audienceEngagementSettings|[educationAiFeedbackAudienceEngagementSettings](../resources/educationaifeedbackaudienceengagementsettings.md)|The audience engagement related feedback types that students should receive from the Speaker Coach.|
|contentSettings|[educationAiFeedbackContentSettings](../resources/educationaifeedbackcontentsettings.md)|The content related feedback types that students should receive from the Speaker Coach.|
|deliverySettings|[educationAiFeedbackDeliverySettings](../resources/educationaifeedbackdeliverysettings.md)|The delivery related feedback types that students should receive from the Speaker Coach.|

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

