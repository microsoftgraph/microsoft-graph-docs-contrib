---
title: "printUsageByPrinter resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# printUsageByPrinter resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [printUsage](../resources/printusage.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List printUsageByPrinters](../api/printusagebyprinter-list.md)|[printUsageByPrinter](../resources/printusagebyprinter.md) collection|Get a list of the [printUsageByPrinter](../resources/printusagebyprinter.md) objects and their properties.|
|[Create printUsageByPrinter](../api/printusagebyprinter-create.md)|[printUsageByPrinter](../resources/printusagebyprinter.md)|Create a new [printUsageByPrinter](../resources/printusagebyprinter.md) object.|
|[Get printUsageByPrinter](../api/printusagebyprinter-get.md)|[printUsageByPrinter](../resources/printusagebyprinter.md)|Read the properties and relationships of a [printUsageByPrinter](../resources/printusagebyprinter.md) object.|
|[Update printUsageByPrinter](../api/printusagebyprinter-update.md)|[printUsageByPrinter](../resources/printusagebyprinter.md)|Update the properties of a [printUsageByPrinter](../resources/printusagebyprinter.md) object.|
|[Delete printUsageByPrinter](../api/printusagebyprinter-delete.md)|None|Deletes a [printUsageByPrinter](../resources/printusagebyprinter.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completedBlackAndWhiteJobCount|Int64|**TODO: Add Description** Inherited from [printUsage](../resources/printusage.md)|
|completedColorJobCount|Int64|**TODO: Add Description** Inherited from [printUsage](../resources/printusage.md)|
|id|String|**TODO: Add Description** Inherited from [printUsage](../resources/printusage.md)|
|incompleteJobCount|Int64|**TODO: Add Description** Inherited from [printUsage](../resources/printusage.md)|
|printerId|String|**TODO: Add Description**|
|usageDate|Date|**TODO: Add Description** Inherited from [printUsage](../resources/printusage.md)|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printUsageByPrinter",
  "baseType": "microsoft.graph.printUsage",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printUsageByPrinter",
  "id": "String (identifier)",
  "usageDate": "Date",
  "completedBlackAndWhiteJobCount": "Integer",
  "completedColorJobCount": "Integer",
  "incompleteJobCount": "Integer",
  "printerId": "String"
}
```

