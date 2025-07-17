---
title: printJobConfiguration resource type
description: A group of settings that a printer should use to print a job.
author: nilakhan
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 07/26/2024
---

# printJobConfiguration resource type

Namespace: microsoft.graph

A group of settings that a printer should use to print a job.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|collate|Boolean|Whether the printer should collate pages wehen printing multiple copies of a multi-page document.|
|colorMode|[printColorMode](enums.md#printcolormode-values)|The color mode the printer should use to print the job. Valid values are described in the table below. Read-only.|
|copies|Int32|The number of copies that should be printed. Read-only.|
|dpi|Int32|The resolution to use when printing the job, expressed in dots per inch (DPI). Read-only.|
|duplexMode|[printDuplexMode](enums.md#printduplexmode-values)|The duplex mode the printer should use when printing the job. Valid values are described in the table below. Read-only.|
|feedOrientation|printerFeedOrientation|The orientation to use when feeding media into the printer. Valid values are described in the following table. Read-only.|
|finishings|[printFinishing](enums.md#printfinishing-values) collection|Finishing processes to use when printing.|
|fitPdfToPage|Boolean|True to fit each page of a PDF document to a physical sheet of media; false to let the printer decide how to lay out impressions.|
|inputBin|String|The input bin (tray) to use when printing. See the printer's [capabilities](printercapabilities.md) for a list of supported input bins.|
|margin|[printMargin](printmargin.md)|The margin settings to use when printing.|
|mediaSize|String|The media size to use when printing. Supports standard size names for ISO and ANSI media sizes. Valid values listed in the [printerCapabilities](printercapabilities.md#mediasizes-values) topic.|
|mediaType|String|The default media (such as paper) type to print the document on.|
|multipageLayout|[printMultipageLayout](enums.md#printmultipagelayout-values)|The direction to lay out pages when multiple pages are being printed per sheet. Valid values are described in the following table.|
|orientation|[printOrientation](enums.md#printorientation-values)|The orientation setting the printer should use when printing the job. Valid values are described in the following table.|
|outputBin|String|The output bin to place completed prints into. See the printer's [capabilities](printercapabilities.md) for a list of supported output bins.|
|pageRanges|[integerRange](integerrange.md) collection|The page ranges to print. Read-only.|
|pagesPerSheet|Int32|The number of document pages to print on each sheet.
|quality|[printQuality](enums.md#printquality-values)|The print quality to use when printing the job. Valid values are described in the table below. Read-only.|
|scaling|[printScaling](enums.md#printscaling-values)|Specifies how the printer should scale the document data to fit the requested media. Valid values are described in the following table.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.printJobConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printJobConfiguration",
  "pageRanges": [
    {
      "@odata.type": "microsoft.graph.integerRange"
    }
  ],
  "quality": "String",
  "dpi": "Integer",
  "feedOrientation": "String",
  "orientation": "String",
  "duplexMode": "String",
  "copies": "Integer",
  "colorMode": "String",
  "inputBin": "String",
  "outputBin": "String",
  "mediaSize": "String",
  "margin": {
    "@odata.type": "microsoft.graph.printMargin"
  },
  "mediaType": "String",
  "finishings": [
    "String"
  ],
  "pagesPerSheet": "Integer",
  "multipageLayout": "String",
  "collate": "Boolean",
  "scaling": "String",
  "fitPdfToPage": "Boolean"
}
```

