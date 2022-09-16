---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.IdentityGovernance.LifecycleWorkflows.DeletedItems.Workflows["{identityGovernance.workflow-id}"]
	.Restore()
	.Request()
	.PostAsync();

```