---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.IdentityProtection.RiskyServicePrincipals.ConfirmCompromised.ConfirmCompromisedPostRequestBody
{
	ServicePrincipalIds = new List<string>
	{
		"9089a539-a539-9089-39a5-899039a58990",
	},
};
await graphClient.IdentityProtection.RiskyServicePrincipals.ConfirmCompromised.PostAsync(requestBody);


```