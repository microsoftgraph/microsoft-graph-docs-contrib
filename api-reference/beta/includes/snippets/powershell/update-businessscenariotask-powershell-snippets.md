---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Bookings

$params = @{
	"@odata.type" = "#microsoft.graph.businessScenarioTask"
	Title = "Customer order #12010"
	PercentComplete = 20
	Priority = 1
	BusinessScenarioProperties = @{
		ExternalObjectVersion = "000003"
	}
}

Update-MgBusinessScenarioPlannerTask -BusinessScenarioId $businessScenarioId -BusinessScenarioTaskId $businessScenarioTaskId -BodyParameter $params

```