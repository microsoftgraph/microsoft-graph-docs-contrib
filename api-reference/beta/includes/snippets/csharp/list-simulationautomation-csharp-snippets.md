---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var simulationAutomations = await graphClient.Security.AttackSimulation.SimulationAutomations
	.Request()
	.GetAsync();

```