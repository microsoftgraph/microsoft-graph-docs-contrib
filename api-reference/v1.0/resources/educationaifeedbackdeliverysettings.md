---
title: "educationAiFeedbackDeliverySettings resource type"
description: "Represents the delivery-related feedback types that students should receive from the AI feedback."
author: "GatadiMegha"
ms.date: 09/04/2025
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
toc.title: "Education AI feedback delivery settings"
---

# educationAiFeedbackDeliverySettings resource type

Namespace: microsoft.graph

Represents the delivery-related feedback types that students should receive from the AI feedback.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|areRhetoricalTechniquesEnabled|Boolean|Indicates whether the student should receive feedback on their rhetorical techniques from the AI feedback.|
|isLanguageUseEnabled|Boolean|Indicates whether the student should receive feedback on their language use from the AI feedback.|
|isStyleEnabled|Boolean|Indicates whether the student should receive feedback on their style from the AI feedback.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationAiFeedbackDeliverySettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.educationAiFeedbackDeliverySettings",
  "areRhetoricalTechniquesEnabled": "Boolean",
  "isLanguageUseEnabled": "Boolean",
  "isStyleEnabled": "Boolean"
}
```
