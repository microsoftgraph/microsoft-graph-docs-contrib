---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var customTaskExtension = await graphClient.IdentityGovernance.LifecycleWorkflows.CustomTaskExtensions["{identityGovernance.customTaskExtension-id}"]
	.Request()
	.GetAsync();

```