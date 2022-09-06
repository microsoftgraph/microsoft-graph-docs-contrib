---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var lifecycleManagementSettings = await graphClient.IdentityGovernance.LifecycleWorkflows.Settings
	.Request()
	.GetAsync();

```