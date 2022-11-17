---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userSummary = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{identityGovernance.workflow-id}"].UserProcessingResults
	.Summary(2022-10-01T00:00:00Z,2022-10-30T00:00:00Z)
	.Request()
	.GetAsync();

```