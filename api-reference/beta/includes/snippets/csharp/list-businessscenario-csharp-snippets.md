---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var businessScenarios = await graphClient.Solutions.BusinessScenarios
	.Request()
	.GetAsync();

```