---
title: "agentCapabilities resource type"
description: "Defines optional capabilities supported by an agent."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# agentCapabilities resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines optional capabilities defined in the [agent card manifest](../resources/agentcardmanifest.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|extensions|[agentExtension](../resources/agentextension.md) collection|A list of protocol extensions supported by the agent.|
|pushNotifications|Boolean|Indicates if the agent supports sending push notifications for asynchronous task updates.|
|stateTransitionHistory|Boolean|Indicates if the agent provides a history of state transitions for a task.|
|streaming|Boolean|Indicates if the agent supports Server-Sent Events (SSE) for streaming responses.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.agentCapabilities"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentCapabilities",
  "streaming": "Boolean",
  "pushNotifications": "Boolean",
  "stateTransitionHistory": "Boolean",
  "extensions": [
    {
      "@odata.type": "microsoft.graph.agentExtension"
    }
  ]
}
```

