---
title: "educationAiFeedbackContentSettings resource type"
description: "Represents the content-related feedback types that students should receive from the AI feedback."
author: "GatadiMegha"
ms.date: 09/04/2025
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
toc.title: "Education AI feedback content settings"
---

# educationAiFeedbackContentSettings resource type

Namespace: microsoft.graph

Represents the content-related feedback types that students should receive from the AI feedback.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isMessageClarityEnabled|Boolean|Indicates whether the student should receive feedback on their message clarity from the AI feedback.|
|isQualityOfInformationEnabled|Boolean|Indicates whether the student should receive feedback on their quality of information from the AI feedback.|
|isSpeechOrganizationEnabled|Boolean|Indicates whether the student should receive feedback on their speech organization from the AI feedback.|

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
  "isMessageClarityEnabled": "Boolean",
  "isQualityOfInformationEnabled": "Boolean",
  "isSpeechOrganizationEnabled": "Boolean"
}
```
