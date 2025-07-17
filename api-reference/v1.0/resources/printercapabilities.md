---
title: printerCapabilities complex type
description: Represents the capabilities reported by a printer.
author: nilakhan
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 10/04/2024
---

# printerCapabilities resource type

Namespace: microsoft.graph

Represents the capabilities reported by a printer/printerShare.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|bottomMargins|Int32 collection|A list of supported bottom margins(in microns) for the printer.|
|collation|Boolean|True if the printer supports collating when printing muliple copies of a multi-page document; false otherwise.|
|colorModes|[printColorMode](enums.md#printcolormode-values) collection|The color modes supported by the printer. Valid values are described in the following table.|
|contentTypes|String collection|A list of supported content (MIME) types that the printer supports. It is not guaranteed that the Universal Print service supports printing all of these MIME types.|
|copiesPerJob|[integerRange](integerrange.md)|The range of copies per job supported by the printer.|
|dpis|Int32 collection|The list of print resolutions in DPI that are supported by the printer.|
|duplexModes|[printDuplexMode](enums.md#printduplexmode-values) collection|The list of duplex modes that are supported by the printer. Valid values are described in the following table.|
|feedOrientations|printerFeedOrientation collection|The list of feed orientations that are supported by the printer.|
|finishings|[printFinishing](enums.md#printfinishing-values) collection|Finishing processes the printer supports for a printed document.|
|inputBins|String collection|Supported input bins for the printer.|
|isColorPrintingSupported|Boolean|True if color printing is supported by the printer; false otherwise. Read-only.|
|isPageRangeSupported|Boolean|True if the printer supports printing by page ranges; false otherwise.|
|leftMargins|Int32 collection|A list of supported left margins(in microns) for the printer.|
|mediaColors|String collection|The media (i.e., paper) colors supported by the printer.|
|mediaSizes|String collection|The media sizes supported by the printer. Supports standard size names for ISO and ANSI media sizes. Valid values are in the following [table](#mediasizes-values).|
|mediaTypes|String collection|The media types supported by the printer.|
|multipageLayouts|[printMultipageLayout](enums.md#printmultipagelayout-values) collection|The presentation directions supported by the printer. Supported values are described in the following table.|
|orientations|[printOrientation](enums.md#printorientation-values) collection|The print orientations supported by the printer. Valid values are described in the following table.|
|outputBins|String collection|The printer's supported output bins (trays).|
|pagesPerSheet|Int32 collection|Supported number of Input Pages to impose upon a single Impression.|
|qualities|[printQuality](enums.md#printquality-values) collection|The print qualities supported by the printer.|
|queueBufferSizeInBytes|Int32|The maximum print job queue size that can be stored by the printer.|
|rightMargins|Int32 collection|A list of supported right margins(in microns) for the printer.|
|scalings|[printScaling](enums.md#printscaling-values) collection|Supported print scalings.|
|supportsFitPdfToPage|Boolean|True if the printer supports scaling PDF pages to match the print media size; false otherwise.|
|topMargins|Int32 collection|A list of supported top margins(in microns) for the printer.|


### mediaSizes values

|Value|
|:---|
|A3|
|A4|
|A5|
|A6|
|JIS B4|
|JIS B5|
|JPN Hagaki|
|North America 5x7in|
|North America Executive|
|North America Goverment Letter|
|North America Index 3x5in|
|North America Index 4x8in|
|North America Index 5x8in|
|North America Invoice|
|North America Ledger|
|North America Legal|
|North America Letter|
|Photo l 3.5x5in|
|Business Card|
|Photo|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.printerCapabilities"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printerCapabilities",
  "contentTypes": [
    "String"
  ],
  "isColorPrintingSupported": "Boolean",
  "feedOrientations": [
    "String"
  ],
  "isPageRangeSupported": "Boolean",
  "qualities": [
    "String"
  ],
  "dpis": [
    "Integer"
  ],
  "duplexModes": [
    "String"
  ],
  "copiesPerJob": {
    "@odata.type": "microsoft.graph.integerRange"
  },
  "finishings": [
    "String"
  ],
  "mediaColors": [
    "String"
  ],
  "mediaTypes": [
    "String"
  ],
  "mediaSizes": [
    "String"
  ],
  "pagesPerSheet": [
    "Integer"
  ],
  "orientations": [
    "String"
  ],
  "outputBins": [
    "String"
  ],
  "supportsFitPdfToPage": "Boolean",
  "multipageLayouts": [
    "String"
  ],
  "colorModes": [
    "String"
  ],
  "inputBins": [
    "String"
  ],
  "topMargins": [
    "Integer"
  ],
  "bottomMargins": [
    "Integer"
  ],
  "rightMargins": [
    "Integer"
  ],
  "leftMargins": [
    "Integer"
  ],
  "collation": "Boolean",
  "scalings": [
    "String"
  ]
}
```

