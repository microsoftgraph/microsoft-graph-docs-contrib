---
title: "agentCapabilities resource type"
description: "**TODO: Add Description**"
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra"
doc_type: resourcePageType
---

# agentCapabilities resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Properties
|Property|Type|Description|
|:---|:---|:---|
|extensions|[agentExtension](../resources/agentextension.md) collection|**TODO: Add Description**|
|pushNotifications|Boolean|**TODO: Add Description**|
|stateTransitionHistory|Boolean|**TODO: Add Description**|
|streaming|Boolean|**TODO: Add Description**|

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

