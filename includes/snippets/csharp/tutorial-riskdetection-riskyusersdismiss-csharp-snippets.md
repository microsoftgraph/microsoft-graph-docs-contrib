---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.IdentityProtection.RiskyUsers.Dismiss.DismissPostRequestBody
{
	UserIds = new List<string>
	{
		"4628e7df-dff3-407c-a08f-75f08c0806dc",
	},
};
await graphClient.IdentityProtection.RiskyUsers.Dismiss.PostAsync(requestBody);


```