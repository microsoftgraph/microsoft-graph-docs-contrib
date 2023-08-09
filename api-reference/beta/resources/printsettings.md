---
title: printSettings resource type
description: Represents tenant-wide settings for the Universal Print service.
author: braedenp-msft
ms.localizationpriority: medium
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents tenant-wide settings for the Universal Print service.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|documentConversionEnabled|Boolean|Specifies whether document conversion is enabled for the tenant. If document conversion is enabled, Universal Print service will automatically convert documents into a format compatible with the printer (xps to pdf) when needed.|
|displayNonAirPrintCompliantPrinters|Boolean|Specifies whether printers that are not fully AirPrint compliant when used with Universal Print should be visible to Mac users. Users printing from a macOS device may not have access to all advanced settings and statuses on these printers.|

## JSON representation

The following is a JSON representation of printSettings.
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printSettings"
}-->

```json
{
  "documentConversionEnabled": true,
  "displayNonAirPrintCompliantPrinters": true
}
```

## Credit notice

**AirPrint**, **Mac**, and **macOS** are trademarks of Apple, Inc., registered in the US and other countries and regions.
