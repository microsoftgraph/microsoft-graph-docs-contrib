---
title: printJobConfiguration resource type
description: A group of settings that a printer should use to print a job.
author: braedenp-msft
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 07/23/2024
---

# printJobConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A group of settings that a printer should use to print a job.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|pageRanges|[integerRange](integerrange.md) collection|The page ranges to print. Read-only.|
|quality|printQuality|The print quality to use when printing the job. Valid values are described in the table below. Read-only.|
|dpi|Int32|The resolution to use when printing the job, expressed in dots per inch (DPI). Read-only.|
|feedOrientation|printerFeedOrientation|The orientation to use when feeding media into the printer. Valid values are described in the following table. Read-only.|
|orientation|printOrientation|The orientation setting the printer should use when printing the job. Valid values are described in the following table.|
|duplexMode|printDuplexMode|The duplex mode the printer should use when printing the job. Valid values are described in the table below. Read-only.|
|copies|Int32|The number of copies that should be printed. Read-only.|
|colorMode|printColorMode|The color mode the printer should use to print the job. Valid values are described in the table below. Read-only.|
|inputBin|String|The input bin (tray) to use when printing. See the printer's [capabilities](printercapabilities.md) for a list of supported input bins.|
|outputBin|String|The output bin to place completed prints into. See the printer's [capabilities](printercapabilities.md) for a list of supported output bins.|
|mediaSize|String|The media sizeto use when printing. Supports standard size names for ISO and ANSI media sizes. Valid values are listed in the [printerCapabilities](printercapabilities.md#mediasizes-values) topic.|
|margin|[printMargin](printmargin.md)|The margin settings to use when printing.|
|mediaType|String|The default media (such as paper) type to print the document on.|
| finishings | [printFinishing](#printfinishing-values) collection | Finishing processes to use when printing. Possible values are: `none`, `staple`, `punch`, `cover`, `bind`, `saddleStitch`, `stitchEdge`, `stapleTopLeft`, `stapleBottomLeft`, `stapleTopRight`, `stapleBottomRight`, `stitchLeftEdge`, `stitchTopEdge`, `stitchRightEdge`, `stitchBottomEdge`, `stapleDualLeft`, `stapleDualTop`, `stapleDualRight`, `stapleDualBottom`, `unknownFutureValue`. You must use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerottom`, `bindLeft`, `bindTop`, `bindRight`, `bindBottom`, `foldAccordion`, `foldDoubleGate`, `foldGate`, `foldHalf`, `foldHalfZ`, `foldLeftGate`, `foldLetter`, `foldParallel`, `foldPoster`, `foldRightGate`, `foldZ`, `foldEngineeringZ`, `punchTopLeft`, `punchBottomLeft`, `punchTopRight`, `punchBottomRight`, `punchDualLeft`, `punchDualTop`, `punchDualRight`, `punchDualBottom`, `punchTripleLeft`, `punchTripleTop`, `punchTripleRight`, `punchTripleBottom`, `punchQuadLeft`, `punchQuadTop`, `punchQuadRight`, `punchQuadBottom`, `fold`, `trim`, `bale`, `bookletMaker`, `coat`, `laminate`, `trimAfterPages`, `trimAfterDocuments`, `trimAfterCopies`, `trimAfterJob`.|
|pagesPerSheet|Int32|The number of document pages to print on each sheet.
|multipageLayout|printMultipageLayout|The direction to lay out pages when multiple pages are being printed per sheet. Valid values are described in the following table.|
|collate|Boolean|Whether the printer should collate pages when printing multiple copies of a multi-page document.|
|scaling|printScaling|Specifies how the printer should scale the document data to fit the requested media. Valid values are described in the following table.|

### printQuality values

|Member|Value|Description|
|:---|:---|:---|
|low|0|The printer prints the job using low (commonly known as "draft") quality.|
|medium|1|The printer prints the job using medium (commonly known as "normal") quality.|
|high|2|The printer prints the job using high (commonly known as "best" or "fine") quality.|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Don't use.|

### printerFeedOrientation values

|Member|Value|Description|
|:---|:---|:---|
|longEdgeFirst|0|The printer consumes sheets from the active tray in "landscape" orientation, with the long edge of the sheet first.|
|shortEdgeFirst|1|The printer consumes sheets from the active tray in "portrait" orientation, with the short edge of the sheet first.|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Don't use.|

### printOrientation values

|Member|Value|Description|
|:---|:---|:---|
|portrait|3|The printer prints impressions in the "portrait" orientation.|
|landscape|4|The printer prints impressions in the "landscape" orientation.|
|reverseLandscape|5|The printer prints impressions in the "reverse landscape" orientation.|
|reversePortrait|6|The printer prints impressions in the "reverse portrait" orientation.|

### printDuplexMode values

|Member|Value|Description|
|:---|:---|:---|
|flipOnLongEdge|0|The printer prints double-sided, and flips documents along the long edge.|
|flipOnShortEdge|1|The printer prints double-sided, and flips documents along the short edge.|
|oneSided|2|The printer prints single-sided.|

### printColorMode values

|Member|Value|Description|
|:---|:---|:---|
|blackAndWhite|0|Black and white (use black marker material only.)|
|grayscale|1|Grayscale (may use some color marker material.)|
|color|2|Color (use any combination of marker materials to create a color impression).|
|auto|3|Let the printer decide which color mode to use.|

### printFinishing values

|Member|Description|
|:---|:---|
|none|No finishings. Including this value is equivalent to providing an empty collection of finishings.|
|staple|Staple the document using the printer's default stapling configuration.|
|punch|Hole punches the document using the printer's default hole punch configuration.|
|cover|Apply a cover to the document.|
|bind|Bind the document using the printer's default binding configuration.|
|saddleStitch|Saddle-stich the document using the printer's default stitching configuration.|
|stitchEdge|Edge-stitch the document using the printer's default stitching configuration.|
|stapleTopLeft|Staple the document in the top-left corner.|
|stapleBottomLeft|Staple the document in the bottom-left corner.|
|stapleTopRight|Staple the document in the top-right corner.|
|stapleBottomRight|Staple the document in the bottom-right corner.|
|stitchLeftEdge|Edge-stitch the document along the left edge.|
|stitchTopEdge|Edge-stitch the document along the top edge.|
|stitchRightEdge|Edge-stitch the document along the right edge.|
|stitchBottomEdge|Edge-stitch the document along the bottom edge.|
|stapleDualLeft|Staple the document twice along the left edge.|
|stapleDualTop|Staple the document twice along the top edge.|
|stapleDualRight|Staple the document twice along the right edge.|
|stapleDualBottom|Staple the document twice along the bottom edge.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|
|stapleTripleLeft|Bind the document or documents with three staples (wire stitches) along the left edge.|
|stapleTripleTop|Bind the document or documents with three staples (wire stitches) along the top edge.|
|stapleTripleRight|Bind the document or documents with three staples (wire stitches) along the right edge.|
|stapleTripleBottom|Bind the document or documents with three staples (wire stitches) along the bottom edge.|
|bindLeft|Bind the document or documents along the left edge; the type of the binding is site-defined.|
|bindTop|Bind the document or documents along the top edge; the type of the binding is site-defined.|
|bindRight|Bind the document or documents along the right edge; the type of the binding is site-defined.|
|bindBottom|Bind the document or documents along the bottom edge; the type of the binding is site-defined.|
|foldAccordion|Accordion-fold the hardcopy output vertically into four sections.|
|foldDoubleGate|Fold the top and bottom quarters of the hardcopy output towards the midline, then fold in half vertically.|
|foldGate|Fold the top and bottom quarters of the hardcopy output towards the midline.|
|foldHalf|Fold the hardcopy output in half vertically.|
|foldHalfZ|Fold the hardcopy output in half horizontally, then Z-fold the paper vertically into three sections.|
|foldLeftGate|Fold the top quarter of the hardcopy output towards the midline.|
|foldLetter|Fold the hardcopy output into three sections vertically; sometimes also known as a C fold.|
|foldParallel|Fold the hardcopy output in half vertically two times, yielding four sections.|
|foldPoster|Fold the hardcopy output in half horizontally and vertically; sometimes also called a cross fold.|
|foldRightGate|Fold the bottom quarter of the hardcopy output towards the midline.|
|foldZ|Fold the hardcopy output vertically into three sections, forming a Z.|
|foldEngineeringZ|Fold the hardcopy output vertically into three sections, forming a Z but leaving room for binding, punching, or stapling along the top edge.|
|punchTopLeft|Punch a single hole in the top left of the hardcopy output.|
|punchBottomLeft|Punch a single hole in the bottom left of the hardcopy output.|
|punchTopRight|Punch a single hole in the top right of the hardcopy output.|
|punchBottomRight|Punch a single hole in the bottom right of the hardcopy output.|
|punchDualLeft|Punch two holes on the left side of the hardcopy output.|
|punchDualTop|Punch two holes on the top side of the hardcopy output.|
|punchDualRight|Punch two holes on the right side of the hardcopy output.|
|punchDualBottom|Punch two holes on the bottom side of the hardcopy output.|
|punchTripleLeft|Punch three holes on the left side of the hardcopy output.|
|punchTripleTop|Punch three holes on the top side of the hardcopy output.|
|punchTripleRight|Punch three holes on the right side of the hardcopy output.|
|punchTripleBottom|Punch three holes on the bottom side of the hardcopy output.|
|punchQuadLeft|Punch four holes on the left side of the hardcopy output.|
|punchQuadTop|Punch four holes on the top side of the hardcopy output.|
|punchQuadRight|Punch four holes on the right side of the hardcopy output.|
|punchQuadBottom|Punch four holes on the bottom side of the hardcopy output.|
|fold|Fold the hardcopy output.|
|trim|Trim the hardcopy output on one or more edges.|
|bale|Bale the set or sets.|
|bookletMaker|Deliver the set or sets to the signature booklet maker.|
|coat|Apply a protective liquid or powdered coating to each sheet.|
|laminate|Apply a protective (solid) material to each sheet.|
|trimAfterPages|Trim output after each page.|
|trimAfterDocuments|Trim output after each document.|
|trimAfterCopies|Trim output after each set.|
|trimAfterJob|Trim output after the job.|

### printMultipageLayout values

|Member|Value|Description|
|:---|:---|:---|
|clockwiseFromTopLeft|0|Arrange the pages in a clockwise grid starting in the top left.|
|counterClockwiseFromTopLeft|1|Arrange the pages in a counterclockwise grid starting in the top left.|
|counterClockwiseFromTopRight|2|Arrange the pages in a counterclockwise grid starting in the top right.|
|clockwiseFromTopRight|3|Arrange the pages in a clockwise grid starting in the top right.|
|counterClockwiseFromBottomLeft|4|Arrange the pages in a counterclockwise grid starting in the bottom left.|
|clockwiseFromBottomLeft|5|Arrange the pages in a clockwise grid starting in the bottom left.|
|counterClockwiseFromBottomRight|6|Arrange the pages in a counterclockwise grid starting in the bottom right.|
|clockwiseFromBottomRight|7|Arrange the pages in a clockwise grid starting in the bottom right.|

### printScaling values

|Member|Value|Description|
|:---|:---|:---|
|auto|0|If the document is larger than the requested media and the margins are nonzero, the printer scales the document like the **fit** printScaling. Otherwise, the printer scales the document using the **fill** printScaling. If the document is smaller than the requested media, 'none' printScaling is used.|
|shrinkToFit|1|If the document is larger than the requested media, the printer scales the document like the **fit** printScaling. Otherwise, the printer scales the document like the **none** printScaling.|
|fill|2|The printer scales the document to fill the requested media size, preserving its aspect ratio but potentially cropping portions of the document.|
|fit|3|The printer scales the document to fit the printable area of the requested media size, preserving the aspect ratio of the document data without cropping the document.|
|none|4|The printer doesn't scale the document to fit the requested media size. If the document is larger than the requested media, the printer centers and clips the resulting output. If the document is smaller than the requested media, printer centers the resulting output.|
|unknownFutureValue|5|Evolvable enumeration sentinel value. Don't use.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printJobConfiguration"
}-->

```json
{
  "pageRanges": [{"@odata.type": "microsoft.graph.integerRange"}],
  "quality": {"@odata.type": "microsoft.graph.printQuality"},
  "dpi": 12345,
  "feedOrientation": {"@odata.type": "microsoft.graph.printerFeedOrientation"},
  "orientation": {"@odata.type": "microsoft.graph.printOrientation"},
  "duplexMode": {"@odata.type": "microsoft.graph.printDuplexMode"},
  "copies": 12345,
  "colorMode": {"@odata.type": "microsoft.graph.printColorMode"},
  "inputBin": "",
  "outputBin": "",
  "mediaSize": "",
  "margin": {"@odata.type": "microsoft.graph.printMargin"},
  "mediaType": "String",
  "finishings": ["String"],
  "pagesPerSheet": "Int32",
  "multipageLayout": {"@odata.type": "microsoft.graph.printMultipageLayout"},
  "collate": true,
  "scaling": {"@odata.type": "microsoft.graph.printScaling"}
}
```


