---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Identity.B2cUserFlows.Item.UserFlowIdentityProviders.Item.UserFlowIdentityProvider
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.id" , "https://graph.microsoft.com/beta/identity/identityProviders/{id}"
		},
		{
			"@odata.type" , "#microsoft.graph.identityProvider"
		},
	},
};
await graphClient.Identity.B2cUserFlows["{b2cIdentityUserFlow-id}"].UserFlowIdentityProviders["{identityProviderBase-id}"].PatchAsync(requestBody);


```