---
title: printUsageByUser resource type
description: Describes print activity for a user during a specified time period (usageDate).
author: nilakhan
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
---

# printUsageByUser resource type

Namespace: microsoft.graph

Describes print activity for a user during a specified time period (usageDate).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [List (daily)](../api/reportroot-list-dailyprintusagebyuser.md) | [printUsageByUser](printusagebyuser.md) | Get a list of daily print usage summaries, grouped by user. |
| [List (monthly)](../api/reportroot-list-monthlyprintusagebyuser.md) | [printUsageByUser](printusagebyuser.md) | Get a list of monthly print usage summaries, grouped by user. |
| [Get](../api/printusagebyuser-get.md) | [printUsageByUser](printusagebyuser.md) | Read properties and relationships of a printUsageByUser object. |

## Properties
|Property|Type|Description|
|:-------------|:------------|:------------|
|blackAndWhitePageCount|Int64|The estimated number of black and white pages printed on behalf of the user based on reporting by the printer.|
|colorPageCount|Int64|The estimated number of color pages printed on behalf of the user based on reporting by the printer.|
|completedBlackAndWhiteJobCount|Int64|The number of black and white print jobs completed on behalf of the user.|
|completedColorJobCount|Int64|The number of color print jobs completed on behalf of the user.|
|completedJobCount|Int64|The number of print jobs that were completed on behalf of the user.|
|doubleSidedSheetCount|Int64|The estimated number of double-sided media sheets printed on behalf of the user based on reporting by the printer.|
|id|String|The ID of this usage summary.|
|incompleteJobCount|Int64|The number of print jobs that were queued on behalf of the user, but not completed.|
|mediaSheetCount|Int64|The estimated number of media sheets printed on behalf of the user based on reporting by the printer.|
|pageCount|Int64|The estimated number of pages printed on behalf of the user based on reporting by the printer.|
|singleSidedSheetCount|Int64|The estimated number of single-sided media sheets printed on behalf of the user based on reporting by the printer.|
|usageDate|Date|The date associated with these statistics.|
|userPrincipalName|String|The UPN of the user represented by these statistics.|

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
  "description": "printUsageByUser resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

