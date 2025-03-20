---
title: "educationAiFeedbackContentSettings resource type"
description: "The content related feedback types that students should receive from the AI feedback."
author: "v-rmanda"
ms.date: 03/20/2025
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
---

# educationAiFeedbackContentSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The content related feedback types that students should receive from the AI feedback.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|isMessageClarityEnabled|Boolean|Whether the student should receive feedback on their message clarity from the AI feedback.|
|isQualityOfInformationEnabled|Boolean|Whether the student should receive feedback on their quality of information from the AI feedback.|
|isSpeechOrganizationEnabled|Boolean|Whether the student should receive feedback on their speech organization from the AI feedback.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationAiFeedbackContentSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.educationAiFeedbackContentSettings",
  "isSpeechOrganizationEnabled": "Boolean",
  "isMessageClarityEnabled": "Boolean",
  "isQualityOfInformationEnabled": "Boolean"
}
```

