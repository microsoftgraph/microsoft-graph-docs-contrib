---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var task = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{identityGovernance.workflow-id}"].Versions["{identityGovernance.workflowVersion-id}"].Tasks["{identityGovernance.task-id}"]
	.Request()
	.GetAsync();

```