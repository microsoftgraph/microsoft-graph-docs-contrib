---
title: airPrintSettings resource type
description: Represents tenant-wide settings to configure the behavior of printers when print jobs are submitted to Universal Print from macOS, which requires AirPrint compatibility.
author: JuliusShanMS
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
---

# airPrintSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents tenant-wide settings to configure the behavior of printers when print jobs are submitted to Universal Print from macOS, which requires AirPrint compatibility.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|incompatiblePrinters|[incompatiblePrinterSettings](#incompatibleprintersettings-values)|Describes whether Universal Print hides printers from macOS when they don't support all capabilities required by the operating system as defined by AirPrint.|

### incompatiblePrinterSettings values 

|Member|Value|Description|
|:---|:---|:---|
|show|0|Show printers that aren't compatible with AirPrint.|
|hide|1|Hide printers that aren't compatible with AirPrint.|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Don't use.|

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
  "incompatiblePrinters": "string"
}
```

### Credit notice

**AirPrint**, **Mac**, and **macOS** are trademarks of Apple, Inc., registered in the US and other countries/regions.
