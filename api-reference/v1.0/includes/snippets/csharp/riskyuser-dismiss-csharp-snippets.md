---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.IdentityProtection.RiskyUsers.Dismiss.DismissPostRequestBody
{
	UserIds = new List<string>
	{
		"04487ee0-f4f6-4e7f-8999-facc5a30e232",
		"13387ee0-f4f6-4e7f-8999-facc5120e345",
	},
};
await graphClient.IdentityProtection.RiskyUsers.Dismiss.PostAsync(requestBody);


```