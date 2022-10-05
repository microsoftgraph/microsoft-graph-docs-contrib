---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var runs = await graphClient.Security.AttackSimulation.SimulationAutomations["{simulationAutomation-id}"].Runs
	.Request()
	.GetAsync();

```