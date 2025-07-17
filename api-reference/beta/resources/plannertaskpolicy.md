---
title: "plannerTaskPolicy resource type"
description: "Represents the policy configuration for tasks created for a businessScenario when they're being changed outside of the scenario."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.subservice: "business-scenarios"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# plannerTaskPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the policy configuration for [tasks](../resources/businessscenariotask.md) created for a [businessScenario](../resources/businessscenario.md) when they're being changed outside of the scenario.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|rules|[plannerTaskRoleBasedRule](../resources/plannertaskrolebasedrule.md) collection|The rules that should be enforced on the tasks when they're being changed outside of the scenario, based on the role of the caller.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerTaskPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerTaskPolicy",
  "rules": [{"@odata.type": "microsoft.graph.plannerTaskRoleBasedRule"}]
}
```
