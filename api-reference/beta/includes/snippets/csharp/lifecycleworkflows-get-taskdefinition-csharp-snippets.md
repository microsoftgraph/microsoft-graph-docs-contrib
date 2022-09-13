---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var taskDefinition = await graphClient.IdentityGovernance.LifecycleWorkflows.TaskDefinitions["{identityGovernance.taskDefinition-id}"]
	.Request()
	.GetAsync();

```