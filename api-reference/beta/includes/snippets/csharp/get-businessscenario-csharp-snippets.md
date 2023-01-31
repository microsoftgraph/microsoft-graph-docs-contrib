---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var businessScenario = await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"]
	.Request()
	.GetAsync();

```