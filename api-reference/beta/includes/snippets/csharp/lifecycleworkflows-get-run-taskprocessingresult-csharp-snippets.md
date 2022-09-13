---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userProcessingResults = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{identityGovernance.workflow-id}"].Runs["{identityGovernance.run-id}"].UserProcessingResults
	.Request()
	.GetAsync();

```