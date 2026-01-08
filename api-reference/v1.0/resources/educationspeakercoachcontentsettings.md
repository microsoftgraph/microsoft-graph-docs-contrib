---
title: "educationSpeakerCoachContentSettings resource type"
description: "Represents the content-related feedback types that students should receive from the Speaker Coach."
author: "GatadiMegha"
ms.date: 09/04/2025
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
---

# educationSpeakerCoachContentSettings resource type

Namespace: microsoft.graph

Represents the content-related feedback types that students should receive from the Speaker Coach.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isInclusivenessEnabled|Boolean|Indicates whether the student should receive feedback on their inclusiveness from the Speaker Coach.|
|isRepetitiveLanguageEnabled|Boolean|Indicates whether the student should receive feedback on their repetitive language from the Speaker Coach.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationSpeakerCoachContentSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.educationSpeakerCoachContentSettings",
  "isInclusivenessEnabled": "Boolean",
  "isRepetitiveLanguageEnabled": "Boolean"
}
```
