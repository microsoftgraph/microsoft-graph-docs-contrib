---
title: "printUsageByUser resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# printUsageByUser resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [printUsage](../resources/printusage.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List printUsageByUsers](../api/printusagebyuser-list.md)|[printUsageByUser](../resources/printusagebyuser.md) collection|Get a list of the [printUsageByUser](../resources/printusagebyuser.md) objects and their properties.|
|[Create printUsageByUser](../api/printusagebyuser-create.md)|[printUsageByUser](../resources/printusagebyuser.md)|Create a new [printUsageByUser](../resources/printusagebyuser.md) object.|
|[Get printUsageByUser](../api/printusagebyuser-get.md)|[printUsageByUser](../resources/printusagebyuser.md)|Read the properties and relationships of a [printUsageByUser](../resources/printusagebyuser.md) object.|
|[Update printUsageByUser](../api/printusagebyuser-update.md)|[printUsageByUser](../resources/printusagebyuser.md)|Update the properties of a [printUsageByUser](../resources/printusagebyuser.md) object.|
|[Delete printUsageByUser](../api/printusagebyuser-delete.md)|None|Deletes a [printUsageByUser](../resources/printusagebyuser.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completedBlackAndWhiteJobCount|Int64|**TODO: Add Description** Inherited from [printUsage](../resources/printusage.md)|
|completedColorJobCount|Int64|**TODO: Add Description** Inherited from [printUsage](../resources/printusage.md)|
|id|String|**TODO: Add Description** Inherited from [printUsage](../resources/printusage.md)|
|incompleteJobCount|Int64|**TODO: Add Description** Inherited from [printUsage](../resources/printusage.md)|
|usageDate|Date|**TODO: Add Description** Inherited from [printUsage](../resources/printusage.md)|
|userPrincipalName|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printUsageByUser",
  "baseType": "microsoft.graph.printUsage",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printUsageByUser",
  "id": "String (identifier)",
  "usageDate": "Date",
  "completedBlackAndWhiteJobCount": "Integer",
  "completedColorJobCount": "Integer",
  "incompleteJobCount": "Integer",
  "userPrincipalName": "String"
}
```

