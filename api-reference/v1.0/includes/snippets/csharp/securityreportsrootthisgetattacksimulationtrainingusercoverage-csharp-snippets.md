---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getAttackSimulationTrainingUserCoverage = await graphClient.Reports.Security
	.GetAttackSimulationTrainingUserCoverage()
	.Request()
	.GetAsync();

```