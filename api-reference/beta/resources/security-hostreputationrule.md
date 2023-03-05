---
title: "hostReputationRule resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# hostReputationRule resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|**TODO: Add Description**|
|link|String|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|severity|microsoft.graph.security.hostReputationRuleSeverity|**TODO: Add Description**.The possible values are: `unknown`, `low`, `medium`, `high`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.hostReputationRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.hostReputationRule",
  "name": "String",
  "description": "String",
  "severity": "String",
  "link": "String"
}
```

