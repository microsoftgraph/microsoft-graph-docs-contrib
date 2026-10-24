---
title: "interactionParticipant resource type"
description: "Represents another participant in an agent interaction."
author: "psanyal"
ms.date: 09/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# interactionParticipant resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents another participant in an agent interaction. This type is abstract. Use the **@odata.type** property to specify an [agentParticipant](agentparticipant.md), [toolParticipant](toolparticipant.md), or [userParticipant](userparticipant.md).

Used in the **participants** property of [activityMetadata](activitymetadata.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|value|String|The identifier of the participant. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.interactionParticipant"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.interactionParticipant",
  "value": "String"
}
```
