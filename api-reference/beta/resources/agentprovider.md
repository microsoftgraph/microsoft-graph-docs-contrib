---
title: "agentProvider resource type"
description: "Represents the service provider of an agent."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# agentProvider resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the service provider of an agent, as defined in the [agentCardManifest](../resources/agentcardmanifest.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|organization|String| The name of the agent provider's organization.|
|url|String|A URL for the agent provider's website or relevant documentation.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.agentProvider"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentProvider",
  "organization": "String",
  "url": "String"
}
```

