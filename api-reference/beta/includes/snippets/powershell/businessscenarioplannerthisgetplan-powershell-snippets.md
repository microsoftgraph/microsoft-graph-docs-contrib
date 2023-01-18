---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Bookings

$params = @{
	Target = @{
		"@odata.type" = "microsoft.graph.businessScenarioGroupTarget"
		TaskTargetKind = "group"
		GroupId = "7a339254-4b2b-4410-b295-c890a16776ee"
	}
}

Get-MgBusinessScenarioPlannerPlan -BusinessScenarioId $businessScenarioId -BodyParameter $params

```