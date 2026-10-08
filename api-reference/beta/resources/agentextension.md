---
title: "agentExtension resource type"
description: "A declaration of a protocol extension supported by an Agent."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# agentExtension resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A declaration of a protocol extension supported by an agent, as defined in the **extensions** property of [agentCapabilities](../resources/agentcapabilities.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|A human-readable description of how this agent uses the extension.|
|params|[agentExtensionParams](../resources/agentextensionparams.md)| Extension-specific configuration parameters.|
|required|Boolean|If true, the client must understand and comply with the extension's requirements to interact with the agent.|
|uri|String|The unique URI identifying the extension.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.agentExtension"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentExtension",
  "uri": "String",
  "description": "String",
  "required": "Boolean",
  "params": {
    "@odata.type": "microsoft.graph.agentExtensionParams"
  }
}
```

