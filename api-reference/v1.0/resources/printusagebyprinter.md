---
title: printUsageByPrinter resource type
description: Describes print activity for a printer during a specified time period (usageDate).
author: nilakhan
ms.localizationpriority: medium
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printUsageByPrinter resource type

Namespace: microsoft.graph

Describes print activity for a printer during a specified time period (usageDate).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [List (daily)](../api/reportroot-list-dailyprintusagebyprinter.md) | [printUsageByPrinter](printUsageByPrinter.md) | Get a list of daily print usage summaries, grouped by printer. |
| [List (monthly)](../api/reportroot-list-monthlyprintusagebyprinter.md) | [printUsageByPrinter](printUsageByPrinter.md) | Get a list of monthly print usage summaries, grouped by printer. |
| [Get](../api/printUsageByPrinter-get.md) | [printUsageByPrinter](printUsageByPrinter.md) | Read the properties and relationships of a **printUsageByPrinter** object. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID of this usage summary.|
|printerID|String|The ID of the printer represented by these statistics.|
|printerName|String|The name of the printer represented by these statistics.|
|usageDate|Date|The date associated with these statistics.|
|completedBlackAndWhiteJobCount|Int64|The number of black and white print jobs completed by the printer on the associated date.|
|completedColorJobCount|Int64|The number of color print jobs completed by the printer on the associated date.|
|incompleteJobCount|Int64|The number of print jobs that were queued for the printer, but not completed, on the associated date.|
|completedJobCount|Int64|The number of print jobs that were completed by the printer on the associated date.|
|pageCount|Int64|The estimated number of pages printed by the printer on the associated date. This number is reported by the physical printer device and is not always accurate for accounting purposes.|
|blackAndWhitePageCount|Int64|The estimated number of black and white pages printed by the printer on the associated date. This number is reported by the physical printer device and is not always accurate for accounting purposes.|
|colorPageCount|Int64|The estimated number of color pages printed by the printer on the associated date. This number is reported by the physical printer device and is not always accurate for accounting purposes.|
|mediaSheetCount|Int64|The estimated number of media sheets printed by the printer on the associated date. This number is reported by the physical printer device and is not always accurate for accounting purposes.|
|doubleSidedSheetCount|Int64|The estimated number of double-sided media sheets printed by the printer on the associated date. This number is reported by the physical printer device and is not always accurate for accounting purposes.|
|singleSidedSheetCount|Int64|The estimated number of single-sided media sheets printed by the printer on the associated date. This number is reported by the physical printer device and is not always accurate for accounting purposes.|

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
  "@odata.type": "#microsoft.graph.printUsageByPrinter",
  "id": "String (identifier)",
  "printerId": "String",
  "printerName": "String (identifier)",
  "usageDate": "Date",
  "completedBlackAndWhiteJobCount": "Integer",
  "completedColorJobCount": "Integer",
  "incompleteJobCount": "Integer"
  "completedJobCount": "Integer",
  "pageCount": "Integer",
  "blackAndWhitePageCount": "Integer",
  "colorPageCount": "Integer",
  "mediaSheetCount": "Integer",
  "doubleSidedSheetCount": "Integer",
  "singleSidedSheetCount": "Integer"
}
```

