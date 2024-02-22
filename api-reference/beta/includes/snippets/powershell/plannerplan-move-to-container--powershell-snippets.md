---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Planner

$params = @{
	container = @{
		containerId = "groupId"
		type = "group"
	}
}

Move-MgBetaPlannerPlanToContainer -PlannerPlanId $plannerPlanId -BodyParameter $params

```