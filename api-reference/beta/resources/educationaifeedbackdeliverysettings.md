---
title: "educationAiFeedbackDeliverySettings resource type"
description: "The delivery related feedback types that students should receive from the AI feedback."
author: "v-rmanda"
ms.date: 03/20/2025
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
---

# educationAiFeedbackDeliverySettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The delivery related feedback types that students should receive from the AI feedback.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|areRhetoricalTechniquesEnabled|Boolean|Whether the student should receive feedback on their rhetorical techniques from the AI feedback.|
|isLanguageUseEnabled|Boolean|Whether the student should receive feedback on their language use from the AI feedback.|
|isStyleEnabled|Boolean|Whether the student should receive feedback on their style from the AI feedback.|

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
  "isLanguageUseEnabled": "Boolean",
  "areRhetoricalTechniquesEnabled": "Boolean",
  "isStyleEnabled": "Boolean"
}
```

