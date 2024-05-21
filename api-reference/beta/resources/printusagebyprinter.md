---
title: printUsageByPrinter resource type
description: Describes print activity for a printer during a specified time period (usageDate).
author: braedenp-msft
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
---

# printUsageByPrinter resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes print activity for a printer during a specified time period (usageDate).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List (daily)](../api/reportroot-list-dailyprintusagebyprinter.md) | [printUsageByPrinter](printUsageByPrinter.md) | Get a list of daily print usage summaries, grouped by printer. |
| [List (monthly)](../api/reportroot-list-monthlyprintusagebyprinter.md) | [printUsageByPrinter](printUsageByPrinter.md) | Get a list of monthly print usage summaries, grouped by printer. |
| [Get](../api/printUsageByPrinter-get.md) | [printUsageByPrinter](printUsageByPrinter.md) | Read the properties and relationships of a **printUsageByPrinter** object. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|blackAndWhitePageCount|Int64|The estimated number of black and white pages printed based on reporting by the printer.|
|colorPageCount|Int64|The estimated number of color pages printed based on reporting by the printer.|
|completedBlackAndWhiteJobCount|Int64|The number of black and white print jobs completed by the printer.|
|completedColorJobCount|Int64|The number of color print jobs completed by the printer.|
|completedJobCount|Int64|The number of print jobs that were completed by the printer.|
|doubleSidedSheetCount|Int64|The estimated number of double-sided media sheets printed based on reporting by the printer.|
|id|String|The ID of this usage summary.|
|incompleteJobCount|Int64|The number of print jobs that were queued for the printer, but not completed.|
|mediaSheetCount|Int64|The estimated number of media sheets printed based on reporting by the printer.|
|pageCount|Int64|The estimated number of pages printed based on reporting by the printer.|
|printerId|String|The ID of the printer represented by these statistics.|
|printerName|String|The name of the printer represented by these statistics.|
|singleSidedSheetCount|Int64|The estimated number of single-sided media sheets printed based on reporting by the printer.|
|usageDate|Date|The date associated with these statistics.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printUsageByPrinter"
}-->

```json
{
    "id": "String (identifier)",
    "printerId": "String (identifier)",
    "printerName": "String (identifier)",
    "usageDate": "String (timestamp)",
    "completedBlackAndWhiteJobCount": "Integer",
    "completedColorJobCount": "Integer",
    "completedJobCount": "Integer",
    "incompleteJobCount": "Integer",
    "pageCount": "Integer",
    "blackAndWhitePageCount": "Integer",
    "colorPageCount": "Integer",
    "mediaSheetCount": "Integer",
    "doubleSidedSheetCount": "Integer",
    "singleSidedSheetCount": "Integer"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printUsageByPrinter resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

