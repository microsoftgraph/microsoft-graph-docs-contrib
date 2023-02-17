---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var subjects = new List<User>()
{
	new User
	{
		Id = "df744d9e-2148-4922-88a8-633896c1e929"
	}
};

await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{identityGovernance.workflow-id}"]
	.Activate(subjects)
	.Request()
	.PostAsync();

```