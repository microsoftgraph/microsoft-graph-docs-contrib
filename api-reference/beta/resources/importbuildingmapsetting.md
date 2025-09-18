---
title: "importBuildingMapSetting resource type"
description: "Represents the supported import setting for the ingestMapFile API. "
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# importBuildingMapSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the supported import setting for the [ingestMapFile](../api/building-ingestmapfile.md) API. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isDryRun|Boolean|`True` indicates that the service processes the map but doesn't save anything. `False` indicates that the service processes and stores the map.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.importBuildingMapSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.importBuildingMapSetting",
  "isDryRun": "Boolean"
}
```

