---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.BusinessScenario

$params = @{
	title = "Customer order #12010"
	percentComplete = 20
	priority = 1
	businessScenarioProperties = @{
		externalObjectVersion = "000003"
	}
}

Update-MgBetaSolutionBusinessScenarioPlannerTask -BusinessScenarioId $businessScenarioId -BusinessScenarioTaskId $businessScenarioTaskId -BodyParameter $params

```