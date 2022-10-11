---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var simulationAutomation = await graphClient.Security.AttackSimulation.SimulationAutomations["{simulationAutomation-id}"]
	.Request()
	.GetAsync();

```