---
title: printUsage resource type
description: Describes print activity during a specified time period (usageDate).
author: JuliusShanMS
ms.localizationpriority: medium
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printUsage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes print activity during a specified time period (usageDate).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List (daily)](../api/reportroot-list-dailyprintusage.md) | [printUsage](printusage.md) | Get a list of daily print usage summaries. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The ID of this usage summary.|
|usageDate|Date|The date associated with these statistics.|
|completedBlackAndWhiteJobCount|Int64|The number of black and white print jobs completed on the associated date.|
|completedColorJobCount|Int64|The number of color print jobs completed on the associated date.|
|completedJobCount|Int64|The number of print jobs that were completed on the associated date.|
|incompleteJobCount|Int64|The number of print jobs that were queued, but not completed, on the associated date.|
|pageCount|Int64|The number of pages printed on the associated date.|
|blackAndWhitePageCount|Int64|The number of black and white pages printed on the associated date.|
|colorPageCount|Int64|The number of color pages printed on the associated date.|
|mediaSheetCount|Int64|The number of media sheets printed on the associated date.|
|doubleSidedSheetCount|Int64|The number of double-sided media sheets printed on the associated date.|
|singleSidedSheetCount|Int64|The number of single-sided media sheets printed on the associated date.|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.printUsage"
}-->

```json
{
    "id": "String (identifier)",
    "usageDate": "String (timestamp)",
    "completedBlackAndWhiteJobCount": 123456,
    "completedColorJobCount": 123456,
    "completedJobCount": 123456,
    "incompleteJobCount": 123456,
    "pageCount": 123456,
    "blackAndWhitePageCount": 123456,
    "colorPageCount": 123456,
    "mediaSheetCount": 123456,
    "doubleSidedSheetCount": 123456,
    "singleSidedSheetCount": 123456
}
```
