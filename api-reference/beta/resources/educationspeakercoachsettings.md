---
title: "educationSpeakerCoachSettings resource type"
description: "**TODO: Add Description**"
author: "v-rmanda"
ms.date: 03/20/2025
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
---

# educationSpeakerCoachSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Properties
|Property|Type|Description|
|:---|:---|:---|
|audienceEngagementSettings|[educationSpeakerCoachAudienceEngagementSettings](../resources/educationspeakercoachaudienceengagementsettings.md)|The audience engagement related feedback types that students should receive from the AI feedback.|
|contentSettings|[educationSpeakerCoachContentSettings](../resources/educationspeakercoachcontentsettings.md)|The content related feedback types that students should receive from the Speaker Coach.|
|deliverySettings|[educationSpeakerCoachDeliverySettings](../resources/educationspeakercoachdeliverysettings.md)|The delivery related feedback types that students should receive from the Speaker Coach.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationSpeakerCoachSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.educationSpeakerCoachSettings",
  "deliverySettings": {
    "@odata.type": "microsoft.graph.educationSpeakerCoachDeliverySettings"
  },
  "contentSettings": {
    "@odata.type": "microsoft.graph.educationSpeakerCoachContentSettings"
  },
  "audienceEngagementSettings": {
    "@odata.type": "microsoft.graph.educationSpeakerCoachAudienceEngagementSettings"
  }
}
```

