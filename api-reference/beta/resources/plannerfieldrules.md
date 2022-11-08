---
title: "plannerFieldRules resource type"
description: "**TODO: Add Description**"
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# plannerFieldRules resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the rules and permissions that apply to a property as part of [plannerTaskPropertyRule](../resources/plannertaskpropertyrule.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultRules|String collection|The default rules that apply if no override matches to the current data.|
|overrides|[plannerRuleOverride](../resources/plannerruleoverride.md) collection|Overrides that specify different rules for specific data associated with the field.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerFieldRules"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerFieldRules",
  "defaultRules": [
    "String"
  ],
  "overrides": [
    {
      "@odata.type": "microsoft.graph.plannerRuleOverride"
    }
  ]
}
```

