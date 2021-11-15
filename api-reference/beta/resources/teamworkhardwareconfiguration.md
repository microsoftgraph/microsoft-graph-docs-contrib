---
title: "teamworkHardwareConfiguration resource type"
description: "**TODO: Add Description**"
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkHardwareConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details of device hardware configuration.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|processorModel|String|Device CPU model.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|compute|[teamworkPeripheral](../resources/teamworkperipheral.md)|Compute peripheral details.|
|hdmiIngest|[teamworkPeripheral](../resources/teamworkperipheral.md)|HDMI Ingest peripheral details.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkHardwareConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkHardwareConfiguration",
  "processorModel": "String"
}
```

