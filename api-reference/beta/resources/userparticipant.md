---
title: "userParticipant resource type"
description: "Represents a user participating in an interaction with a protected agent."
author: "psanyal"
ms.date: 09/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# userParticipant resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user participating in an interaction with a protected agent.

Used in the **participants** property of [activityMetadata](activitymetadata.md).

Inherits from [interactionParticipant](interactionparticipant.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|value|String|The Microsoft Entra object ID of the user. Inherited from [interactionParticipant](interactionparticipant.md). Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userParticipant"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.userParticipant",
  "value": "String"
}
```
