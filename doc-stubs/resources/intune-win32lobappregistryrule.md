---
title: "win32LobAppRegistryRule resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# win32LobAppRegistryRule resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [win32LobAppRule](../resources/win32lobapprule.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|check32BitOn64System|Boolean|**TODO: Add Description**|
|comparisonValue|String|**TODO: Add Description**|
|keyPath|String|**TODO: Add Description**|
|operationType|win32LobAppRegistryRuleOperationType|**TODO: Add Description**. Possible values are: `notConfigured`, `exists`, `doesNotExist`, `string`, `integer`, `version`.|
|operator|win32LobAppRuleOperator|**TODO: Add Description**. Possible values are: `notConfigured`, `equal`, `notEqual`, `greaterThan`, `greaterThanOrEqual`, `lessThan`, `lessThanOrEqual`.|
|ruleType|win32LobAppRuleType|**TODO: Add Description** Inherited from [win32LobAppRule](../resources/intune-win32lobapprule.md). Possible values are: `detection`, `requirement`.|
|valueName|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.win32LobAppRegistryRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobAppRegistryRule",
  "ruleType": "String",
  "check32BitOn64System": "Boolean",
  "keyPath": "String",
  "valueName": "String",
  "operationType": "String",
  "operator": "String",
  "comparisonValue": "String"
}
```

