---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var taskDefinitions = await graphClient.IdentityGovernance.LifecycleWorkflows.TaskDefinitions
	.Request()
	.Filter("category has 'joiner'")
	.GetAsync();

```