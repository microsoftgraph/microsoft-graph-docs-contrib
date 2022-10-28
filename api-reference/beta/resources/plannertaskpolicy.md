---
title: "plannerTaskPolicy resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# plannerTaskPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the policy configuration for [tasks](../resources/businessscenariotask.md) created for a [businessScenario](../resources/businessscenario.md) getting edited outside of the scenario.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|rules|[plannerTaskRoleBasedRule](../resources/plannertaskrolebasedrule.md) collection|The rules that should be enforced on the tasks when they are being changed outside of the scenario, based on the role of the caller.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerTaskPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerTaskPolicy",
  "rules": [
    {
      "@odata.type": "microsoft.graph.plannerTaskRoleBasedRule"
    }
  ]
}
```

