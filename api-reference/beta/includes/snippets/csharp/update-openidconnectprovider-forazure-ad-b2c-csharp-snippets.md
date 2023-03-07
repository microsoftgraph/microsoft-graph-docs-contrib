---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IdentityProviderBase
{
	OdataType = "#microsoft.graph.socialIdentityProvider",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"responseType" , "id_token"
		},
	},
};
var result = await graphClient.Identity.IdentityProviders["{identityProviderBase-id}"].PatchAsync(requestBody);


```