---
title: printerDiscoverySettings resource type
description: Represents tenant-wide printer discovery settings for the Universal Print service.
author: JuliusShanMS
ms.localizationpriority: medium
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printerDiscoverySettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents tenant-wide printer discovery settings for the Universal Print service.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|airPrint|[airPrintSettings](../resources/airprintsettings.md)|Represents tenant-wide settings to configure the behavior of printers using Apple AirPrint with Universal Print.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.printerDiscoverySettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printerDiscoverySettings",
  "airPrint": {
    "incompatiblePrinters": "hide"
  }
}
```

## Credit notice

**AirPrint**, **Mac**, and **macOS** are trademarks of Apple, Inc., registered in the US and other countries/regions.
