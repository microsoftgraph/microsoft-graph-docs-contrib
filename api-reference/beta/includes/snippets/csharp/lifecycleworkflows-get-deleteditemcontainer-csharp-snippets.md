---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workflow = await graphClient.IdentityGovernance.LifecycleWorkflows.DeletedItems.Workflows["{identityGovernance.workflow-id}"]
	.Request()
	.GetAsync();

```