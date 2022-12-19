---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workflow = new Microsoft.Graph.IdentityGovernance.Workflow
{
	IsEnabled = true,
	IsSchedulingEnabled = true
};

await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{identityGovernance.workflow-id}"]
	.Request()
	.UpdateAsync(workflow);

```