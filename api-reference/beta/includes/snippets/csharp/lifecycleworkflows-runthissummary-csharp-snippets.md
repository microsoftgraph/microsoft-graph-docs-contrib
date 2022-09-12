---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var runSummary = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{identityGovernance.workflow-id}"].Runs
	.Summary(2022-08-01T00:00:00Z,2022-08-31T00:00:00Z)
	.Request()
	.GetAsync();

```