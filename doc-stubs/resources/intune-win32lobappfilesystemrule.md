---
title: "win32LobAppFileSystemRule resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# win32LobAppFileSystemRule resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [win32LobAppRule](../resources/win32lobapprule.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|check32BitOn64System|Boolean|**TODO: Add Description**|
|comparisonValue|String|**TODO: Add Description**|
|fileOrFolderName|String|**TODO: Add Description**|
|operationType|win32LobAppFileSystemOperationType|**TODO: Add Description**. Possible values are: `notConfigured`, `exists`, `modifiedDate`, `createdDate`, `version`, `sizeInMB`.|
|operator|win32LobAppRuleOperator|**TODO: Add Description**. Possible values are: `notConfigured`, `equal`, `notEqual`, `greaterThan`, `greaterThanOrEqual`, `lessThan`, `lessThanOrEqual`.|
|path|String|**TODO: Add Description**|
|ruleType|win32LobAppRuleType|**TODO: Add Description** Inherited from [win32LobAppRule](../resources/intune-win32lobapprule.md). Possible values are: `detection`, `requirement`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.win32LobAppFileSystemRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobAppFileSystemRule",
  "ruleType": "String",
  "path": "String",
  "fileOrFolderName": "String",
  "check32BitOn64System": "Boolean",
  "operationType": "String",
  "operator": "String",
  "comparisonValue": "String"
}
```

