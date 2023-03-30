---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.IdentityGovernance.LifecycleWorkflows.Workflows.Item.IdentityGovernanceActivate.ActivatePostRequestBody
{
	Subjects = new List<User>
	{
		new User
		{
			Id = "8930f0c7-cdd7-4885-9260-3b4a8111de5c",
		},
	},
};
await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{workflow-id}"].IdentityGovernanceActivate.PostAsync(requestBody);


```