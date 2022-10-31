---
title: "plannerRuleOverride resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# plannerRuleOverride resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an overriden rule as part of [plannerFieldRules](../resources/plannerfieldrules.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|Name of the override. Allowed override values will be dependent on the property affected by the rule.|
|rules|String collection|Overridden rules. These are used as rules for the override instead of the default rules.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerRuleOverride"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerRuleOverride",
  "name": "String",
  "rules": [
    "String"
  ]
}
```

