---
title: "airPrintSettings resource type"
description: "Represents tenant-wide settings to configure the behavior of printers when print jobs are submitted to Universal Print from macOS, which requires AirPrint compatibility."
author: "carlapgavilan"
ms.localizationpriority: medium
ms.subservice: "universal-print"
doc_type: resourcePageType
ms.date: "02/12/2025"
---

# airPrintSettings resource type

Namespace: microsoft.graph

Represents tenant-wide settings to configure the behavior of printers when print jobs are submitted to Universal Print from macOS, which requires AirPrint compatibility.

> [!NOTE]
> **AirPrint**, **Mac**, and **macOS** are trademarks of Apple, Inc., registered in the US and other countries/regions.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|incompatiblePrinters|[incompatiblePrinterSettings](#incompatibleprintersettings-values)|Describes whether Universal Print hides printers from macOS when they don't support all capabilities required by the operating system as defined by AirPrint.|

### incompatiblePrinterSettings values 

|Member|Description|
|:---|:---|
|show|Show printers that aren't compatible with AirPrint.|
|hide|Hide printers that aren't compatible with AirPrint.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

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
  "incompatiblePrinters": "String"
}
```