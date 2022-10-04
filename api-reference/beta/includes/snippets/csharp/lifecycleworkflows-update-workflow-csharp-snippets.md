---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workflow = new Microsoft.Graph.IdentityGovernance.Workflow
{
	Description = "Configure new hire tasks for onboarding employees on their first day",
	DisplayName = "Australia Onboard new hire employee",
	IsEnabled = true,
	IsSchedulingEnabled = false
};

await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{identityGovernance.workflow-id}"]
	.Request()
	.UpdateAsync(workflow);

```