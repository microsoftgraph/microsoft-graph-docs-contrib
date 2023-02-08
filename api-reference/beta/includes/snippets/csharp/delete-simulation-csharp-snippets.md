---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Security.AttackSimulation.Simulations["{simulation-id}"]
	.Request()
	.DeleteAsync();

```