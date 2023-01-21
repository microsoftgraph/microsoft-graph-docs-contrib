---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var customTaskExtensions = await graphClient.IdentityGovernance.LifecycleWorkflows.CustomTaskExtensions
	.Request()
	.GetAsync();

```