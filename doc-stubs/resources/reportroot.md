---
title: "reportRoot resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# reportRoot resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List reportRoots](../api/reportroot-list.md)|[reportRoot](../resources/reportroot.md) collection|Get a list of the [reportRoot](../resources/reportroot.md) objects and their properties.|
|[Create reportRoot](../api/reportroot-create.md)|[reportRoot](../resources/reportroot.md)|Create a new [reportRoot](../resources/reportroot.md) object.|
|[Get reportRoot](../api/reportroot-get.md)|[reportRoot](../resources/reportroot.md)|Read the properties and relationships of a [reportRoot](../resources/reportroot.md) object.|
|[Update reportRoot](../api/reportroot-update.md)|[reportRoot](../resources/reportroot.md)|Update the properties of a [reportRoot](../resources/reportroot.md) object.|
|[Delete reportRoot](../api/reportroot-delete.md)|None|Deletes a [reportRoot](../resources/reportroot.md) object.|
|[getUserArchivedPrintJobs](../api/reportroot-getuserarchivedprintjobs.md)|[archivedPrintJob](../resources/archivedprintjob.md) collection|**TODO: Add Description**|
|[getGroupArchivedPrintJobs](../api/reportroot-getgrouparchivedprintjobs.md)|[archivedPrintJob](../resources/archivedprintjob.md) collection|**TODO: Add Description**|
|[getPrinterArchivedPrintJobs](../api/reportroot-getprinterarchivedprintjobs.md)|[archivedPrintJob](../resources/archivedprintjob.md) collection|**TODO: Add Description**|
|[List dailyPrintUsageByPrinter](../api/reportroot-list-dailyprintusagebyprinter.md)|[printUsageByPrinter](../resources/printusagebyprinter.md) collection|Get the printUsageByPrinter resources from the dailyPrintUsageByPrinter navigation property.|
|[Create printUsageByPrinter](../api/reportroot-post-dailyprintusagebyprinter.md)|[printUsageByPrinter](../resources/printusagebyprinter.md)|Create a new printUsageByPrinter object.|
|[List dailyPrintUsageByUser](../api/reportroot-list-dailyprintusagebyuser.md)|[printUsageByUser](../resources/printusagebyuser.md) collection|Get the printUsageByUser resources from the dailyPrintUsageByUser navigation property.|
|[Create printUsageByUser](../api/reportroot-post-dailyprintusagebyuser.md)|[printUsageByUser](../resources/printusagebyuser.md)|Create a new printUsageByUser object.|
|[List monthlyPrintUsageByPrinter](../api/reportroot-list-monthlyprintusagebyprinter.md)|[printUsageByPrinter](../resources/printusagebyprinter.md) collection|Get the printUsageByPrinter resources from the monthlyPrintUsageByPrinter navigation property.|
|[Create printUsageByPrinter](../api/reportroot-post-monthlyprintusagebyprinter.md)|[printUsageByPrinter](../resources/printusagebyprinter.md)|Create a new printUsageByPrinter object.|
|[List monthlyPrintUsageByUser](../api/reportroot-list-monthlyprintusagebyuser.md)|[printUsageByUser](../resources/printusagebyuser.md) collection|Get the printUsageByUser resources from the monthlyPrintUsageByUser navigation property.|
|[Create printUsageByUser](../api/reportroot-post-monthlyprintusagebyuser.md)|[printUsageByUser](../resources/printusagebyuser.md)|Create a new printUsageByUser object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|dailyPrintUsageByPrinter|[printUsageByPrinter](../resources/printusagebyprinter.md) collection|**TODO: Add Description**|
|dailyPrintUsageByUser|[printUsageByUser](../resources/printusagebyuser.md) collection|**TODO: Add Description**|
|monthlyPrintUsageByPrinter|[printUsageByPrinter](../resources/printusagebyprinter.md) collection|**TODO: Add Description**|
|monthlyPrintUsageByUser|[printUsageByUser](../resources/printusagebyuser.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.reportRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.reportRoot"
}
```

