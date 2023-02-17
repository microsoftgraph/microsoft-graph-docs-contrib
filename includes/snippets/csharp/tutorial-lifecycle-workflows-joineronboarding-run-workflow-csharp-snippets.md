---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var subjects = new List<User>()
{
	new User
	{
		Id = "8930f0c7-cdd7-4885-9260-3b4a8111de5c"
	}
};

await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{identityGovernance.workflow-id}"]
	.Activate(subjects)
	.Request()
	.PostAsync();

```