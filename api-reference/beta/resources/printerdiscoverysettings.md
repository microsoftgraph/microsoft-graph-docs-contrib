---
title: printerDiscoverySettings resource type
description: Represents tenant-wide printer discovery settings for the Universal Print service.
author: JuliusShanMS
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
---

# printerDiscoverySettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents tenant-wide printer discovery settings for the Universal Print service.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|airPrint|[airPrintSettings](../resources/airprintsettings.md)|Represents tenant-wide settings to configure the behavior of printers when print jobs are submitted to Universal Print from macOS, which requires AirPrint compatibility.|

## Relationships
None.

## JSON representation
The following JSON shows a representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.printerDiscoverySettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printerDiscoverySettings",
  "airPrint": {
    "@odata.type": "microsoft.graph.airPrintSettings"
  }
}
```

### Credit notice

**AirPrint**, **Mac**, and **macOS** are trademarks of Apple, Inc., registered in the US and other countries/regions.
