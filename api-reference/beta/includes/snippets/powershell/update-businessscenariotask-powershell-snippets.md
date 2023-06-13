---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Bookings

$params = @{
	"@odata.type" = "#microsoft.graph.businessScenarioTask"
	title = "Customer order #12010"
	percentComplete = 20
	priority = 1
	businessScenarioProperties = @{
		externalObjectVersion = "000003"
	}
}

Update-MgBusinessScenarioPlannerTask -BusinessScenarioId $businessScenarioId -BusinessScenarioTaskId $businessScenarioTaskId -BodyParameter $params

```