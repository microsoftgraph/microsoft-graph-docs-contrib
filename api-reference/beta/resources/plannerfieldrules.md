---
title: "plannerFieldRules resource type"
description: "Represents the rules and permissions that apply to a property as part of a plannerTaskPropertyRule."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.subservice: "business-scenarios"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# plannerFieldRules resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the rules and permissions that apply to a property as part of a [plannerTaskPropertyRule](../resources/plannertaskpropertyrule.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|defaultRules|String collection|The default rules that apply if no override matches to the current data.|
|overrides|[plannerRuleOverride](../resources/plannerruleoverride.md) collection|Overrides that specify different rules for specific data associated with the field.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerFieldRules"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerFieldRules",
  "defaultRules": ["String"],
  "overrides": [{"@odata.type": "microsoft.graph.plannerRuleOverride"}]
}
```
