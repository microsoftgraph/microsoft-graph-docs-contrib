---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Planner

$params = @{
	"@odata.type" = "#microsoft.graph.plannerRosterMember"
	userId = "String"
}

New-MgPlannerRosterMember -PlannerRosterId $plannerRosterId -BodyParameter $params

```