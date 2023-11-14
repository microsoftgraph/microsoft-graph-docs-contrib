---
title: airPrintSettings resource type
description: Represents tenant-wide settings to configure the behavior of printers using Apple AirPrint with Universal Print.
author: JuliusShanMS
ms.localizationpriority: medium
ms.prod: cloud-printing
doc_type: resourcePageType
---

# airPrintSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents tenant-wide settings to configure the behavior of printers using Apple AirPrint with Universal Print.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|incompatiblePrinters|incompatiblePrinterSettings|This enum describes whether Universal Print hides printers that aren't compatible with Apple AirPrint during printer discovery on macOS.|

### incompatiblePrinterSettings values 

|Member|Value|Description|
|:---|:---|:---|
|show|0|Show printers that aren't compatible with AirPrint.|
|hide|1|Hide printers that aren't compatible with AirPrint.|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Do not use.|

## Relationships
None.

## JSON representation
The following JSON shows a representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.airPrintSettings"
}
-->
``` json
{
  "incompatiblePrinters": "hide"
}
```

## Credit notice

**AirPrint**, **Mac**, and **macOS** are trademarks of Apple, Inc., registered in the US and other countries/regions.
