---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IdentityProvider
{
	OdataType = "microsoft.graph.identityProvider",
	Name = "Login with Amazon",
	Type = "Amazon",
	ClientId = "56433757-cadd-4135-8431-2c9e3fd68ae8",
	ClientSecret = "000000000000",
};
var result = await graphClient.IdentityProviders.PostAsync(requestBody);


```