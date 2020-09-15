---
title: "win32LobAppPowerShellScriptRule resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# win32LobAppPowerShellScriptRule resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [win32LobAppRule](../resources/win32lobapprule.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|comparisonValue|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|enforceSignatureCheck|Boolean|**TODO: Add Description**|
|operationType|win32LobAppPowerShellScriptRuleOperationType|**TODO: Add Description**. Possible values are: `notConfigured`, `string`, `dateTime`, `integer`, `float`, `version`, `boolean`.|
|operator|win32LobAppRuleOperator|**TODO: Add Description**. Possible values are: `notConfigured`, `equal`, `notEqual`, `greaterThan`, `greaterThanOrEqual`, `lessThan`, `lessThanOrEqual`.|
|ruleType|win32LobAppRuleType|**TODO: Add Description** Inherited from [win32LobAppRule](../resources/intune-win32lobapprule.md). Possible values are: `detection`, `requirement`.|
|runAs32Bit|Boolean|**TODO: Add Description**|
|runAsAccount|runAsAccountType|**TODO: Add Description**. Possible values are: `system`, `user`.|
|scriptContent|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.win32LobAppPowerShellScriptRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobAppPowerShellScriptRule",
  "ruleType": "String",
  "displayName": "String",
  "enforceSignatureCheck": "Boolean",
  "runAs32Bit": "Boolean",
  "runAsAccount": "String",
  "scriptContent": "String",
  "operationType": "String",
  "operator": "String",
  "comparisonValue": "String"
}
```

