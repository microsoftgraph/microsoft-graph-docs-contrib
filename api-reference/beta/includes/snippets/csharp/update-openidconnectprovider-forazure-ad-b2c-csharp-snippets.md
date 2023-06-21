---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new SocialIdentityProvider
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