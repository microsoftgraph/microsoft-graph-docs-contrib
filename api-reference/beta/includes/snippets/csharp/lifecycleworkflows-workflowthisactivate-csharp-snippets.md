---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var subjects = new List<User>()
{
	new User
	{
		Id = "8cdf25a8-c9d2-423e-a03d-3f39f03c3e97"
	},
	new User
	{
		Id = "ea09ac2e-77e3-4134-85f2-25ccf3c33387"
	}
};

await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{identityGovernance.workflow-id}"]
	.Activate(subjects)
	.Request()
	.PostAsync();

```