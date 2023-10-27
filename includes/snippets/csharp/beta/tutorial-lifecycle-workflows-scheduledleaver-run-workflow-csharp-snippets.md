---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.IdentityGovernance.LifecycleWorkflows.Workflows.Item.MicrosoftGraphIdentityGovernanceActivate.ActivatePostRequestBody
{
	Subjects = new List<User>
	{
		new User
		{
			Id = "df744d9e-2148-4922-88a8-633896c1e929",
		},
	},
};
await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows["{workflow-id}"].MicrosoftGraphIdentityGovernanceActivate.PostAsync(requestBody);


```