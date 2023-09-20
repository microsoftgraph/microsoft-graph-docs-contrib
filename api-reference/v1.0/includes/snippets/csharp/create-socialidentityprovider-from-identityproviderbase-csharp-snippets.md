---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new SocialIdentityProvider
{
	OdataType = "microsoft.graph.socialIdentityProvider",
	DisplayName = "Login with Amazon",
	IdentityProviderType = "Amazon",
	ClientId = "56433757-cadd-4135-8431-2c9e3fd68ae8",
	ClientSecret = "000000000000",
};
var result = await graphClient.Identity.IdentityProviders.PostAsync(requestBody);


```