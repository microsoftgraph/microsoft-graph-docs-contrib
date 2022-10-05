---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var simulation = await graphClient.Security.AttackSimulation.Simulations["{simulation-id}"]
	.Request()
	.GetAsync();

```