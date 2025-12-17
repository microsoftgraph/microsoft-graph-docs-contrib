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
|mediaColors|String collection|The media (for example, paper) colors supported by the printer.|
|mediaSizes|String collection|The media sizes supported by the printer. Supports standard size names for ISO and ANSI media sizes. For the list of supported values, see [mediaSizes values](#mediasizes-values).|
|mediaTypes|String collection|The media types supported by the printer. |
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
|A0|
|A1|
|A2|
|A3|
|A4|
|A5|
|A6|
|A7|
|A8|
|A9|
|A10|
|ASME F|
|B0|
|B1|
|B2|
|B3|
|B4|
|B5|
|B6|
|B7|
|B8|
|B9|
|B10|
|Business Card|
|Business Card 2x3.5in|
|Business Card 55x85mm|
|Business Card 55x91mm|
|C4|
|C5|
|C6|
|C7|
|C8|
|C9|
|C10|
|DL|
|ISO 2A0|
|ISO A0x3|
|ISO A1x3|
|ISO A1x4|
|ISO A2x3|
|ISO A2x4|
|ISO A2x5|
|ISO A3 Extra|
|ISO A3x3|
|ISO A3x4|
|ISO A3x5|
|ISO A3x6|
|ISO A3x7|
|ISO A4 Extra|
|ISO A4 Tab|
|ISO A4x3|
|ISO A4x4|
|ISO A4x5|
|ISO A4x6|
|ISO A4x7|
|ISO A4x8|
|ISO A4x9|
|ISO A5 Extra|
|ISO B5 Extra|
|ISO B6C4|
|ISO C0|
|ISO C1|
|ISO C1 Long Edge|
|ISO C2|
|ISO C2 Long Edge|
|ISO C3|
|ISO C3 Long Edge|
|ISO C4 Long Edge|
|ISO C5 Long Edge|
|ISO C6 Long Edge|
|ISO C6C5|
|ISO C7 Long Edge|
|ISO C7C6|
|ISO C8 Long Edge|
|ISO C9 Long Edge|
|ISO C10 Long Edge|
|ISO DL Long Edge|
|ISO ID-1|
|ISO RA0|
|ISO RA1|
|ISO RA2|
|ISO RA3|
|ISO RA4|
|ISO SRA0|
|ISO SRA1|
|ISO SRA2|
|ISO SRA3|
|ISO SRA4|
|JIS B0|
|JIS B1|
|JIS B2|
|JIS B3|
|JIS B4|
|JIS B5|
|JIS B6|
|JIS B7|
|JIS B8|
|JIS B9|
|JIS B10|
|JIS Exec|
|JPN Chou2|
|JPN Chou3|
|JPN Chou4|
|JPN Chou40|
|JPN Hagaki|
|JPN Kahu|
|JPN Kaku1|
|JPN Kaku2|
|JPN Kaku3|
|JPN Kaku4|
|JPN Kaku5|
|JPN Kaku7|
|JPN Kaku8|
|JPN Oufuku|
|JPN You1|
|JPN You3|
|JPN You4|
|JPN You4 Long Edge|
|JPN You5|
|JPN You6|
|JPN You7|
|JPN Youchou2|
|JPN Youchou3|
|JPN Youchou4|
|Large Photo|
|Medium Photo|
|North America 5x7in|
|North America 6x9in|
|North America 7x9in|
|North America 9x11in|
|North America 10x11in|
|North America 10x13in|
|North America 10x14in|
|North America 10x15in|
|North America 11x12in|
|North America 11x15in|
|North America 12x19in|
|North America A2|
|North America Arch A|
|North America Arch B|
|North America Arch C|
|North America Arch D|
|North America Arch E|
|North America Arch E2|
|North America Arch E3|
|North America Architecture E1|
|North America B Plus|
|North America C|
|North America C5|
|North America D|
|North America E|
|North America EUR EDP|
|North America Executive|
|North America F|
|North America Fanfold EUR|
|North America Fanfold US|
|North America Foolscap|
|North America Government Letter|
|North America Govt Legal|
|North America Index 3x5in|
|North America Index 4x6in|
|North America Index 4x6 Ext|
|North America Index 5x8in|
|North America Invoice|
|North America Ledger|
|North America Legal|
|North America Legal Extra|
|North America Letter|
|North America Letter Extra|
|North America Letter Plus|
|North America Monarch|
|North America Monarch Long Edge|
|North America Number 9 Envelope|
|North America Number 9 Long Edge|
|North America Number 10 Envelope|
|North America Number 10 Long Edge|
|North America Number 11 Envelope|
|North America Number 11 Long Edge|
|North America Number 12 Envelope|
|North America Number 12 Long Edge|
|North America Number 14 Envelope|
|North America Number 14 Long Edge|
|North America Oficio|
|North America Personal|
|North America Personal Long Edge|
|North America Quarto|
|North America Super A|
|North America Super B|
|OE 12x16|
|OE 13x22|
|OE 14x17|
|OE 18x22|
|OE A2 Plus|
|OE Photo 10R|
|OE Photo 12R|
|OE Photo 14x18|
|OE Photo 16R|
|OE Photo 20R|
|OE Photo 20x30|
|OE Photo 22R|
|OE Photo 22x28|
|OE Photo 24R|
|OE Photo 24x30|
|OE Photo 30R|
|OE Photo S8R|
|OE Square Photo 4x4|
|OE Square Photo 5x5|
|OM 16K 184x260|
|OM 16K 195x270|
|OM Dai Pa Kai|
|OM Folio|
|OM Folio SP|
|OM Invite|
|OM Italian|
|OM Juuro Ku Kai|
|OM Pa Kai|
|OM Photo 30x40|
|OM Photo 30x45|
|OM Photo 30x90|
|OM Photo 35x46|
|OM Photo 40x60|
|OM Photo 50x75|
|OM Photo 50x76|
|OM Photo 60x90|
|Photo|
|Photo l 3.5x5in|
|PRC 1|
|PRC 2|
|PRC 4|
|PRC 6|
|PRC 7|
|PRC 8|
|PRC 16K|
|PRC 32K|
|Small Photo|
|Square Photo|
|Wide Photo|

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

