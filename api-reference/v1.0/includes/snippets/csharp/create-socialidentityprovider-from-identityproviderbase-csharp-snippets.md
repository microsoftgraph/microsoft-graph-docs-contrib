---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IdentityProviderBase
{
	OdataType = "microsoft.graph.socialIdentityProvider",
	DisplayName = "Login with Amazon",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"identityProviderType" , "Amazon"
		},
		{
			"clientId" , "56433757-cadd-4135-8431-2c9e3fd68ae8"
		},
		{
			"clientSecret" , "000000000000"
		},
	},
};
var result = await graphClient.Identity.IdentityProviders.PostAsync(requestBody);


```