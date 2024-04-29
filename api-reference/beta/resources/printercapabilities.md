---
title: printerCapabilities complex type
description: Represents the capabilities reported by a printer.
author: braedenp-msft
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
---

# printerCapabilities complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the capabilities reported by a printer.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|contentTypes|String collection|A list of supported content (MIME) types that the printer supports. It isn't guaranteed that the Universal Print service supports printing all of these MIME types.|
|isColorPrintingSupported|Boolean|True if color printing is supported by the printer; false otherwise. Read-only.|
|feedOrientations|printerFeedOrientation collection|The list of feed orientations that are supported by the printer.|
|isPageRangeSupported|Boolean|True if the printer supports printing by page ranges; false otherwise.|
|qualities|printQuality collection|The print qualities supported by the printer.|
|dpis|Int32 collection|The list of print resolutions in DPI that are supported by the printer.|
|duplexModes|printDuplexMode collection|The list of duplex modes that are supported by the printer. Valid values are described in the following table.|
|queueBufferSizeInBytes|Int32|The maximum print job queue size that can be stored by the printer.|
|copiesPerJob|[integerRange](integerrange.md)|The range of copies per job supported by the printer.|
|finishings|printFinishing collection|Finishing processes the printer supports for a printed document.|
|mediaColors|String collection|The media (that is, paper) colors supported by the printer.|
|mediaTypes|String collection|The media types supported by the printer.|
|mediaSizes|String collection|The media sizes supported by the printer. Supports standard size names for ISO and ANSI media sizes. Valid values are in the following [table](#mediasizes-values).|
|pagesPerSheet|Int32 collection|Supported number of Input Pages to impose upon a single Impression.|
|orientations|printOrientation collection|The print orientations supported by the printer. Valid values are described in the following table.|
|inputBins|String collection|Supported input bins for the printer.|
|outputBins|String collection|The printer's supported output bins (trays).|
|supportsFitPdfToPage|Boolean|True if the printer supports scaling PDF pages to match the print media size; false otherwise.|
|multipageLayouts|printMultipageLayout collection|The presentation directions supported by the printer. Supported values are described in the following table.|
|colorModes|printColorMode collection|The color modes supported by the printer. Valid values are described in the following table.|
|topMargins|Int32 collection|A list of supported top margins(in microns) for the printer.|
|bottomMargins|Int32 collection|A list of supported bottom margins(in microns) for the printer.|
|rightMargins|Int32 collection|A list of supported right margins(in microns) for the printer.|
|leftMargins|Int32 collection|A list of supported left margins(in microns) for the printer.|
|collation|Boolean|True if the printer supports collating when printing multiple copies of a multi-page document; false otherwise.|
|scalings|printScaling collection|Supported print scalings.|

## printerFeedOrientation values

|Member|Value|Description|
|:---|:---|
|longEdgeFirst|0|The printer consumes sheets from the active tray in "landscape" orientation, with the long edge of the sheet first.|
|shortEdgeFirst|1|The printer consumes sheets from the active tray in "portrait" orientation, with the short edge of the sheet first.|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Don't use.|

### printQuality values

|Member|Value|Description|
|:---|:---|
|low|0|The printer prints the job using low (commonly known as "draft") quality.|
|medium|1|The printer prints the job using medium (commonly known as "normal") quality.|
|high|2|The printer prints the job using high (commonly known as "best" or "fine") quality.|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Don't use.|

### printDuplexMode values

|Member|Value|Description|
|:---|:---|:---|
|flipOnLongEdge|0|The printer prints double-sided, and flips documents along the long edge.|
|flipOnShortEdge|1|The printer prints double-sided, and flips documents along the short edge.|
|oneSided|2|The printer prints single-sided.|

### printFinishing values

|Member|Value|Description|
|:---|:---|:---|
|none|3|No finishings. Including this value is equivalent to providing an empty collection of finishings.|
|staple|4|Staple the document using the printer's default stapling configuration.|
|punch|5|Hole punches the document using the printer's default hole punch configuration.|
|cover|6|Apply a cover to the document.|
|bind|7|Bind the document using the printer's default binding configuration.|
|saddleStitch|8|Saddle-stich the document using the printer's default stitching configuration.|
|stitchEdge|9|Edge-stitch the document using the printer's default stitching configuration.|
|stapleTopLeft|20|Staple the document in the top-left corner.|
|stapleBottomLeft|21|Staple the document in the bottom-left corner.|
|stapleTopRight|22|Staple the document in the top-right corner.|
|stapleBottomRight|23|Staple the document in the bottom-right corner.|
|stitchLeftEdge|24|Edge-stitch the document along the left edge.|
|stitchTopEdge|25|Edge-stitch the document along the top edge.|
|stitchRightEdge|26|Edge-stitch the document along the right edge.|
|stitchBottomEdge|27|Edge-stitch the document along the bottom edge.|
|stapleDualLeft|28|Staple the document twice along the left edge.|
|stapleDualTop|29|Staple the document twice along the top edge.|
|stapleDualRight|30|Staple the document twice along the right edge.|
|stapleDualBottom|31|Staple the document twice along the bottom edge.|
|unknownFutureValue|32|Evolvable enumeration sentinel value. Don't use.|
| `stapleTripleLeft`|33| Bind the Document(s) with three staples (wire stitches) along the left edge.|
| `stapleTripleTop`|34| Bind the Document(s) with three staples (wire stitches) along the top edge.|
| `stapleTripleRight`|35| Bind the Document(s) with three staples (wire stitches) along the right edge.|
| `stapleTripleBottom`|36| Bind the Document(s) with three staples (wire stitches) along the bottom edge.|
| `bindLeft`|37| Bind the Document(s) along the left edge; the type of the binding is site defined. |
| `bindTop`|38| Bind the Document(s) along the top edge; the type of the binding is site defined.|
| `bindRight`|39| Bind the Document(s) along the right edge; the type of the binding is site defined.|
| `bindBottom`|40| Bind the Document(s) along the bottom edge; the type of the binding is site defined. |
| `foldAccordion`|41| Accordion-fold the hardcopy output vertically into four sections.|
| `foldDoubleGate`|42| Fold the top and bottom quarters of the hardcopy output towards the midline, then fold in half vertically.|
| `foldGate`|43| Fold the top and bottom quarters of the hardcopy output towards the midline.|
| `foldHalf`|44| Fold the hardcopy output in half vertically.|
| `foldHalfZ`|45| Fold the hardcopy output in half horizontally, then Z-fold the paper vertically into three sections.|
| `foldLeftGate`|46| Fold the top quarter of the hardcopy output towards the midline.|
| `foldLetter`|47| Fold the hardcopy output into three sections vertically; sometimes also known as a C fold. |
| `foldParallel`|48| Fold the hardcopy output in half vertically two times, yielding four sections.|
| `foldPoster`|49| Fold the hardcopy output in half horizontally and vertically; sometimes also called a cross fold.|
| `foldRightGate`|50| Fold the bottom quarter of the hardcopy output towards the midline.|
| `foldZ`|51| Fold the hardcopy output vertically into three sections, forming a Z.|
| `foldEngineeringZ`|52| Fold the hardcopy output vertically into three sections, forming a Z but leaving room for binding, punching, or stapling along the top edge.|
| `punchTopLeft`|53| Punch a single hole in the top left of the hardcopy output.|
| `punchBottomLeft`|54| Punch a single hole in the bottom left of the hardcopy output.|
| `punchTopRight`|55| Punch a single hole in the top right of the hardcopy output.|
| `punchBottomRight`|56| Punch a single hole in the bottom right of the hardcopy output.|
| `punchDualLeft`|57| Punch two holes on the left side of the hardcopy output.|
| `punchDualTop`|58| Punch two holes on the top side of the hardcopy output.|
| `punchDualRight`|59| Punch two holes on the right side of the hardcopy output.|
| `punchDualBottom`|60| Punch two holes on the bottom side of the hardcopy output.|
| `punchTripleLeft`|61| Punch three holes on the left side of the hardcopy output.|
| `punchTripleTop`|62| Punch three holes on the top side of the hardcopy output.|
| `punchTripleRight`|63| Punch three holes on the right side of the hardcopy output.|
| `punchTripleBottom`|64| Punch three holes on the bottom side of the hardcopy output.|
| `punchQuadLeft`|65| Punch four holes on the left side of the hardcopy output.|
| `punchQuadTop`|66| Punch four holes on the top side of the hardcopy output.|
| `punchQuadRight`|67| Punch four holes on the right side of the hardcopy output.|
| `punchQuadBottom`|68| Punch four holes on the bottom side of the hardcopy output.|
| `fold`|69|  Fold the hardcopy output.|
| `Trim`|70|  Trim the hardcopy output on one or more edges. |
| `Bale`|71|  Bale the set(s). |
| `BookletMaker`|72|  Deliver the set(s) to the signature booklet maker. |
| `Coat`|73|  Apply a protective liquid or powdered coating to each sheet. |
| `Laminate`|74|  Apply a protective (solid) material to each sheet. |
| `TrimAfterPages`|75|  Trim output after each page. |
| `TrimAfterDocuments`|76|  Trim output after each document. |
| `TrimAfterCopies`|77|  Trim output after each set. |
| `TrimAfterJob`|78|  Trim output after job. |

## printOrientation values

|Member|Value|Description|
|:---|:---|:---|
|portrait|3|The printer prints impressions in the "portrait" orientation.|
|landscape|4|The printer prints impressions in the "landscape" orientation.|
|reverseLandscape|5|The printer prints impressions in the "reverse landscape" orientation.|
|reversePortrait|6|The printer prints impressions in the "reverse portrait" orientation.|

### printMultipageLayout values

|Member|Value|Description|
|:---|:---|:---|
|clockwiseFromTopLeft|0|Arrange the pages in a clockwise grid starting in the top left.|
|counterclockwiseFromTopLeft|1|Arrange the pages in a counterclockwise grid starting in the top left.|
|counterclockwiseFromTopRight|2|Arrange the pages in a counterclockwise grid starting in the top right.|
|clockwiseFromTopRight|3|Arrange the pages in a clockwise grid starting in the top right.|
|counterclockwiseFromBottomLeft|4|Arrange the pages in a counterclockwise grid starting in the bottom left.|
|clockwiseFromBottomLeft|5|Arrange the pages in a clockwise grid starting in the bottom left.|
|counterclockwiseFromBottomRight|6|Arrange the pages in a counterclockwise grid starting in the bottom right.|
|clockwiseFromBottomRight|7|Arrange the pages in a clockwise grid starting in the bottom right.|

### printColorMode values

|Member|Value|Description|
|:---|:---|:---|
|blackAndWhite|0|Black and white (use black marker material only.)|
|grayscale|1|Grayscale (may use some color marker material.)|
|color|2|Color (use any combination of marker materials to create a color impression).|
|auto|3|Let the printer decide which color mode to use.|

### printScaling values

|Member|Value|Description|
|:---|:---|:---|
|auto|0|If the document is larger than the requested media and the margins are nonzero, the printer scales the document like the **fit** printScaling. Otherwise, the printer scales the document using the **fill** printScaling. If the document is smaller than the requested media, 'none' printScaling is used.|
|shrinkToFit|1|If the document is larger than the requested media, the printer scales the document like the **fit** printScaling. Otherwise, the printer scales the document like the **none** printScaling.|
|fill|2|The printer scales the document to fill the requested media size, preserving its aspect ratio but potentially cropping portions of the document.|
|fit|3|The printer scales the document to fit the printable area of the requested media size, preserving the aspect ratio of the document data without cropping the document.|
|none|4|The printer doesn't scale the document to fit the requested media size. If the document is larger than the requested media, the printer centers and clips the resulting output. If the document is smaller than the requested media, printer centers the resulting output.|
|unknownFutureValue|5|Evolvable enumeration sentinel value. Don't use.|

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
|North America Government Letter|
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

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printerCapabilities"
}-->

```json
{
  "contentTypes": [""],
  "isColorPrintingSupported": true,
  "feedOrientations": [{"@odata.type": "microsoft.graph.printerFeedOrientation"}],
  "isPageRangeSupported": true,
  "qualities": [{"@odata.type": "microsoft.graph.printQuality"}],
  "dpis": [12345],
  "duplexModes": [{"@odata.type": "microsoft.graph.printDuplexMode"}],
  "queueBufferSizeInBytes": 12345,
  "copiesPerJob": {"@odata.type": "microsoft.graph.integerRange"},
  "finishings": [{"@odata.type": "microsoft.graph.printFinishing"}],
  "mediaColors": [""],
  "mediaTypes": [""],
  "mediaSizes": [""],
  "pagesPerSheet": [12345],
  "orientations": [{"@odata.type": "microsoft.graph.printOrientation"}],
  "inputBins": [""],
  "outputBins": [""],
  "supportsFitPdfToPage": true,
  "multipageLayouts": [{"@odata.type": "microsoft.graph.printMultipageLayout"}],
  "colorModes": [{"@odata.type": "microsoft.graph.printColorMode"}],
  "topMargins": [12345],
  "bottomMargins": [12345],
  "rightMargins": [12345],
  "leftMargins": [12345],
  "collation": true,
  "scalings": [{"@odata.type": "microsoft.graph.printScaling"}]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printerCapabilities resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

