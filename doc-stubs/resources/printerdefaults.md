---
title: "printerDefaults resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# printerDefaults resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|colorMode|printColorMode|**TODO: Add Description**. Possible values are: `blackAndWhite`, `grayscale`, `color`, `auto`.|
|contentType|String|**TODO: Add Description**|
|copiesPerJob|Int32|**TODO: Add Description**|
|documentMimeType|String|**TODO: Add Description**|
|dpi|Int32|**TODO: Add Description**|
|duplexConfiguration|printDuplexConfiguration|**TODO: Add Description**. Possible values are: `twoSidedLongEdge`, `twoSidedShortEdge`, `oneSided`.|
|duplexMode|printDuplexMode|**TODO: Add Description**. Possible values are: `flipOnLongEdge`, `flipOnShortEdge`, `oneSided`.|
|finishings|printFinishing collection|**TODO: Add Description**|
|fitPdfToPage|Boolean|**TODO: Add Description**|
|inputBin|String|**TODO: Add Description**|
|mediaColor|String|**TODO: Add Description**|
|mediaSize|String|**TODO: Add Description**|
|mediaType|String|**TODO: Add Description**|
|multipageLayout|printMultipageLayout|**TODO: Add Description**. Possible values are: `clockwiseFromTopLeft`, `counterclockwiseFromTopLeft`, `counterclockwiseFromTopRight`, `clockwiseFromTopRight`, `counterclockwiseFromBottomLeft`, `clockwiseFromBottomLeft`, `counterclockwiseFromBottomRight`, `clockwiseFromBottomRight`.|
|orientation|printOrientation|**TODO: Add Description**. Possible values are: `portrait`, `landscape`, `reverseLandscape`, `reversePortrait`.|
|outputBin|String|**TODO: Add Description**|
|pagesPerSheet|Int32|**TODO: Add Description**|
|pdfFitToPage|Boolean|**TODO: Add Description**|
|presentationDirection|printPresentationDirection|**TODO: Add Description**. Possible values are: `clockwiseFromTopLeft`, `counterClockwiseFromTopLeft`, `counterClockwiseFromTopRight`, `clockwiseFromTopRight`, `counterClockwiseFromBottomLeft`, `clockwiseFromBottomLeft`, `counterClockwiseFromBottomRight`, `clockwiseFromBottomRight`.|
|printColorConfiguration|printColorConfiguration|**TODO: Add Description**. Possible values are: `blackAndWhite`, `grayscale`, `color`, `auto`.|
|printQuality|printQuality|**TODO: Add Description**. Possible values are: `low`, `medium`, `high`, `unknownFutureValue`.|
|quality|printQuality|**TODO: Add Description**. Possible values are: `low`, `medium`, `high`, `unknownFutureValue`.|
|scaling|printScaling|**TODO: Add Description**. Possible values are: `auto`, `shrinkToFit`, `fill`, `fit`, `none`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.printerDefaults"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printerDefaults",
  "copiesPerJob": "Integer",
  "contentType": "String",
  "finishings": [
    "String"
  ],
  "mediaColor": "String",
  "mediaType": "String",
  "mediaSize": "String",
  "pagesPerSheet": "Integer",
  "orientation": "String",
  "inputBin": "String",
  "outputBin": "String",
  "fitPdfToPage": "Boolean",
  "multipageLayout": "String",
  "colorMode": "String",
  "quality": "String",
  "duplexMode": "String",
  "dpi": "Integer",
  "scaling": "String",
  "documentMimeType": "String",
  "pdfFitToPage": "Boolean",
  "presentationDirection": "String",
  "printColorConfiguration": "String",
  "printQuality": "String",
  "duplexConfiguration": "String"
}
```

