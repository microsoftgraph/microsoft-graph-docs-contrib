---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Applications.Item.TokenLifetimePolicies.TokenLifetimePoliciesPostRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.id" , "https://graph.microsoft.com/beta/policies/tokenLifetimePolicies/cd3d9b57-0aee-4f25-8ee3-ac74ef5986a9"
		},
	},
};
await graphClient.Applications["application-id"].TokenLifetimePolicies.PostAsync(requestBody);


```