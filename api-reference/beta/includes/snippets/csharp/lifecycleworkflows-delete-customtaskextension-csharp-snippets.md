---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.IdentityGovernance.LifecycleWorkflows.CustomTaskExtensions["{identityGovernance.customTaskExtension-id}"]
	.Request()
	.DeleteAsync();

```