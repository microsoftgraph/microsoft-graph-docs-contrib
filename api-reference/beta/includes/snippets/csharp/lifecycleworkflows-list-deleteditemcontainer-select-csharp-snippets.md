---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workflows = await graphClient.IdentityGovernance.LifecycleWorkflows.DeletedItems.Workflows
	.Request()
	.Filter("category eq 'leaver'")
	.Select("id,category,displayName,description,version")
	.GetAsync();

```