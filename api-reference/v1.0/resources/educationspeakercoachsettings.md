---
title: "educationSpeakerCoachSettings resource type"
description: "Represents the feedback types that students should receive from the Speaker Coach."
author: "GatadiMegha"
ms.date: 09/04/2025
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
---

# educationSpeakerCoachSettings resource type

Namespace: microsoft.graph

Represents the feedback types that students should receive from the Speaker Coach.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|audienceEngagementSettings|[educationSpeakerCoachAudienceEngagementSettings](../resources/educationspeakercoachaudienceengagementsettings.md)|The audience engagement related feedback types that students should receive from the Speaker Coach.|
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
  "audienceEngagementSettings": {"@odata.type": "microsoft.graph.educationSpeakerCoachAudienceEngagementSettings"},
  "contentSettings": {"@odata.type": "microsoft.graph.educationSpeakerCoachContentSettings"},
  "deliverySettings": {"@odata.type": "microsoft.graph.educationSpeakerCoachDeliverySettings"}
}
```
