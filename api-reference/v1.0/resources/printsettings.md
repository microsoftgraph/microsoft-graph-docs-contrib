---
title: printSettings resource type
description: Represents tenant-wide settings for the Universal Print service.
author: nilakhan
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 08/08/2024
---

# printSettings resource type

Namespace: microsoft.graph

Represents tenant-wide settings for the Universal Print service.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|documentConversionEnabled|Boolean|Specifies whether document conversion is enabled for the tenant. If document conversion is enabled, Universal Print service converts documents into a format compatible with the printer (xps to pdf) when needed.|
|printerDiscoverySettings|[printerDiscoverySettings](../resources/printerdiscoverysettings.md)|Specifies settings that affect printer discovery when using Universal Print.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printSettings"
}-->
```json
{
  "documentConversionEnabled": true,
  "printerDiscoverySettings": {
    "@odata.type": "microsoft.graph.printerDiscoverySettings"
  }
}
```

## Credit notice

**AirPrint**, **Mac**, and **macOS** are trademarks of Apple, Inc., registered in the US and other countries/regions.