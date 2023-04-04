---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AuthenticationMethodConfiguration
{
	OdataType = "#microsoft.graph.temporaryAccessPassAuthenticationMethodConfiguration",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"isUsableOnce" , true
		},
	},
};
var result = await graphClient.Policies.AuthenticationMethodsPolicy.AuthenticationMethodConfigurations["{authenticationMethodConfiguration-id}"].PatchAsync(requestBody);


```