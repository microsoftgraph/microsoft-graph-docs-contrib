---
title: "agentParticipant resource type"
description: "Represents another agent participating in an interaction with a protected agent."
author: "psanyal"
ms.date: 09/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# agentParticipant resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents another agent participating in an interaction with a protected agent.

Used in the **participants** property of [activityMetadata](activitymetadata.md).

Inherits from [interactionParticipant](interactionparticipant.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|value|String|The Microsoft Entra application ID of the other agent. Inherited from [interactionParticipant](interactionparticipant.md). Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.agentParticipant"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.agentParticipant",
  "value": "String"
}
```
