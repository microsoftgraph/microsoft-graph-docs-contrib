---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Planner

$params = @{
	content = "This is a new chat message"
}

New-MgBetaPlannerTaskMessage -PlannerTaskId $plannerTaskId -BodyParameter $params

```