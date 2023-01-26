---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attackSimulationOperation = await graphClient.Security.AttackSimulation.Operations["{attackSimulationOperation-id}"]
	.Request()
	.GetAsync();

```