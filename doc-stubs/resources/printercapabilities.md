---
title: "printerCapabilities resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# printerCapabilities resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bottomMargins|Int32 collection|**TODO: Add Description**|
|collation|Boolean|**TODO: Add Description**|
|colorModes|printColorMode collection|**TODO: Add Description**|
|contentTypes|String collection|**TODO: Add Description**|
|copiesPerJob|[integerRange](../resources/integerrange.md)|**TODO: Add Description**|
|dpis|Int32 collection|**TODO: Add Description**|
|duplexModes|printDuplexMode collection|**TODO: Add Description**|
|feedOrientations|printerFeedOrientation collection|**TODO: Add Description**|
|finishings|printFinishing collection|**TODO: Add Description**|
|inputBins|String collection|**TODO: Add Description**|
|isColorPrintingSupported|Boolean|**TODO: Add Description**|
|isPageRangeSupported|Boolean|**TODO: Add Description**|
|leftMargins|Int32 collection|**TODO: Add Description**|
|mediaColors|String collection|**TODO: Add Description**|
|mediaSizes|String collection|**TODO: Add Description**|
|mediaTypes|String collection|**TODO: Add Description**|
|multipageLayouts|printMultipageLayout collection|**TODO: Add Description**|
|orientations|printOrientation collection|**TODO: Add Description**|
|outputBins|String collection|**TODO: Add Description**|
|pagesPerSheet|Int32 collection|**TODO: Add Description**|
|qualities|printQuality collection|**TODO: Add Description**|
|rightMargins|Int32 collection|**TODO: Add Description**|
|scalings|printScaling collection|**TODO: Add Description**|
|supportsFitPdfToPage|Boolean|**TODO: Add Description**|
|topMargins|Int32 collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

