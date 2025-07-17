---
title: "plannerRuleOverride resource type"
description: "Represents an overridden rule as part of plannerFieldRules."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.subservice: "business-scenarios"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# plannerRuleOverride resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an overridden rule as part of [plannerFieldRules](../resources/plannerfieldrules.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|name|String|Name of the override. Allowed override values will be dependent on the property affected by the rule.|
|rules|String collection|Overridden rules. These are used as rules for the override instead of the default rules.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerRuleOverride"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerRuleOverride",
  "name": "String",
  "rules": ["String"]
}
```
