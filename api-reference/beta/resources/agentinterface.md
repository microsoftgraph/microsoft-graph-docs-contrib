---
title: "agentInterface resource type"
description: "Declares a combination of a target URL and a transport protocol for interacting with the agent."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# agentInterface resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Declares a combination of a target URL and a transport protocol for interacting with the agent, as defined in the [agentInstance object](../resources/agentinstance.md). This allows agents to expose the same functionality over multiple transport mechanisms.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|transport|String|The transport protocol supported at this URL.|
|url|String|The URL where this interface is available. Must be a valid absolute HTTPS URL in production.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.agentInterface"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentInterface",
  "url": "String",
  "transport": "String"
}
```

