---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IdentityProvider
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"responseType" , "id_token"
		},
	},
};
var result = await graphClient.IdentityProviders["{identityProvider-id}"].PatchAsync(requestBody);


```