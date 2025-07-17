---
title: "educationSpeakerCoachAudienceEngagementSettings resource type"
description: "Represents the audience engagement-related feedback types that students should receive from the Speaker Coach."
author: "v-rmanda"
ms.date: 03/20/2025
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
---

# educationSpeakerCoachAudienceEngagementSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the audience engagement-related feedback types that students should receive from the Speaker Coach.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isBodyLanguageEnabled|Boolean|Indicates whether the student should receive feedback on their body language from the Speaker Coach.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationSpeakerCoachAudienceEngagementSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.educationSpeakerCoachAudienceEngagementSettings",
  "isBodyLanguageEnabled": "Boolean"
}
```

