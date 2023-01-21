---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workflows = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows
	.Request()
	.GetAsync();

```