---
title: "activityMetadata resource type"
description: "Represents metadata about an activity being evaluated, including its type and other participants."
author: "ArunGedela"
ms.date: 09/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# activityMetadata resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents metadata about an activity being evaluated, including its type and other participants.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activity|microsoft.graph.security.userActivityType|The type of activity. Possible values are `uploadText`, `uploadFile`, `downloadText`, `downloadFile`, `copyToClipboard`, `unknownFutureValue`. Required.|
|participants|Collection([interactionParticipant](interactionparticipant.md))|The other parties in an agent interaction. Specify the concrete participant type by using the **@odata.type** property. Required when **evaluationScope.type** is `agent`; otherwise optional.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.activityMetadata"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.activityMetadata",
  "activity": "String",
  "participants": [
    {
      "@odata.type": "microsoft.graph.interactionParticipant"
    }
  ]
}
```
