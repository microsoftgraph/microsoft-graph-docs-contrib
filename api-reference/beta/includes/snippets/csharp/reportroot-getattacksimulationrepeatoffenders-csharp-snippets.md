---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getAttackSimulationRepeatOffenders = await graphClient.Reports
	.GetAttackSimulationRepeatOffenders()
	.Request()
	.GetAsync();

```