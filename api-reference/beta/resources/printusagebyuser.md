---
title: printUsageByUser resource type
description: Describes print activity for a user during a specified time period (usageDate).
author: braedenp-msft
ms.localizationpriority: medium
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printUsageByUser resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes print activity for a user during a specified time period (usageDate).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List (daily)](../api/reportroot-list-dailyprintusagebyuser.md) | [printUsageByUser](printusagebyuser.md) | Get a list of daily print usage summaries, grouped by user. |
| [List (monthly)](../api/reportroot-list-monthlyprintusagebyuser.md) | [printUsageByUser](printusagebyuser.md) | Get a list of monthly print usage summaries, grouped by user. |
| [Get](../api/printusagebyuser-get.md) | [printUsageByUser](printusagebyuser.md) | Read properties and relationships of a printUsageByUser object. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The ID of this usage summary.|
|userPrincipalName|String|The UPN of the user represented by these statistics.|
|usageDate|Date|The date associated with these statistics.|
|completedBlackAndWhiteJobCount|Int64|The number of black and white print jobs completed on behalf of the user on the associated date.|
|completedColorJobCount|Int64|The number of color print jobs completed on behalf of the user on the associated date.|
|completedJobCount|Int64|The number of print jobs that were completed on behalf of the user on the associated date.|
|incompleteJobCount|Int64|The number of print jobs that were queued on behalf of the user, but not completed, on the associated date.|
|pageCount|Int64|The estimated number of pages printed on behalf of the user on the associated date. This number is reported by the physical printer device and is not always accurate for accounting purposes.|
|blackAndWhitePageCount|Int64|The estimated number of black and white pages printed on behalf of the user on the associated date. This number is reported by the physical printer device and is not always accurate for accounting purposes.|
|colorPageCount|Int64|The estimated number of color pages printed on behalf of the user on the associated date. This number is reported by the physical printer device and is not always accurate for accounting purposes.|
|mediaSheetCount|Int64|The estimated number of media sheets printed on behalf of the user on the associated date. This number is reported by the physical printer device and is not always accurate for accounting purposes.|
|doubleSidedSheetCount|Int64|The estimated number of double-sided media sheets printed on behalf of the user on the associated date. This number is reported by the physical printer device and is not always accurate for accounting purposes.|
|singleSidedSheetCount|Int64|The estimated number of single-sided media sheets printed on behalf of the user on the associated date. This number is reported by the physical printer device and is not always accurate for accounting purposes.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printUsageByUser"
}-->

```json
{
    "id": "String (identifier)",
    "userPrincipalName": "String (identifier)",
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

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printUsageByUser resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

