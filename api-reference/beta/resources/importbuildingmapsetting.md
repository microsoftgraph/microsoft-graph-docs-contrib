---
title: "importBuildingMapSetting resource type"
description: "**TODO: Add Description**"
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# importBuildingMapSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Supported import setting for ingestMapFile method. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isDryRun|Boolean|If isDryRun is true, the service will process the map but won’t save anything. If it's false, the service will process and store the map.|

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

