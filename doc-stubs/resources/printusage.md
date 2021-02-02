---
title: "printUsage resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# printUsage resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List printUsages](../api/printusage-list.md)|[printUsage](../resources/printusage.md) collection|Get a list of the [printUsage](../resources/printusage.md) objects and their properties.|
|[Create printUsage](../api/printusage-create.md)|[printUsage](../resources/printusage.md)|Create a new [printUsage](../resources/printusage.md) object.|
|[Get printUsage](../api/printusage-get.md)|[printUsage](../resources/printusage.md)|Read the properties and relationships of a [printUsage](../resources/printusage.md) object.|
|[Update printUsage](../api/printusage-update.md)|[printUsage](../resources/printusage.md)|Update the properties of a [printUsage](../resources/printusage.md) object.|
|[Delete printUsage](../api/printusage-delete.md)|None|Deletes a [printUsage](../resources/printusage.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completedBlackAndWhiteJobCount|Int64|**TODO: Add Description**|
|completedColorJobCount|Int64|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|incompleteJobCount|Int64|**TODO: Add Description**|
|usageDate|Date|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printUsage",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printUsage",
  "id": "String (identifier)",
  "usageDate": "Date",
  "completedBlackAndWhiteJobCount": "Integer",
  "completedColorJobCount": "Integer",
  "incompleteJobCount": "Integer"
}
```

