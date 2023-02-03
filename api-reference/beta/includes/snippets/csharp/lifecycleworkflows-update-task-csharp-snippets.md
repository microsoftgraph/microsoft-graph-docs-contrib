---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var task = new Microsoft.Graph.IdentityGovernance.Task
{
	Description = "Add user to selected groups",
	DisplayName = "Update marketing day 1 add users to Group set up"
};

await graphClient.Identitygovernance.LifecycleWorkflows.Workflows["{identityGovernance.workflow-id}"].Tasks["{identityGovernance.task-id}"]
	.Request()
	.UpdateAsync(task);

```