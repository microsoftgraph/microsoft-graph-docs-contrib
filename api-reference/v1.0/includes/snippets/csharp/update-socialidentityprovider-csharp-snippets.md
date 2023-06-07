---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IdentityProviderBase
{
	OdataType = "#microsoft.graph.socialIdentityProvider",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"clientSecret" , "1111111111111"
		},
	},
};
var result = await graphClient.Identity.IdentityProviders["{identityProviderBase-id}"].PatchAsync(requestBody);


```