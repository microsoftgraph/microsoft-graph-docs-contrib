---
title: "toolParticipant resource type"
description: "Represents a tool participating in an interaction with a protected agent."
author: "psanyal"
ms.date: 09/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# toolParticipant resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a tool participating in an interaction with a protected agent.

Used in the **participants** property of [activityMetadata](activitymetadata.md).

Inherits from [interactionParticipant](interactionparticipant.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|mcpServerId|String|The stable identifier of the Model Context Protocol (MCP) server that hosts the tool. Optional.|
|value|String|The stable identifier assigned to the tool by the agent platform. Inherited from [interactionParticipant](interactionparticipant.md). Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.toolParticipant"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.toolParticipant",
  "mcpServerId": "String",
  "value": "String"
}
```
