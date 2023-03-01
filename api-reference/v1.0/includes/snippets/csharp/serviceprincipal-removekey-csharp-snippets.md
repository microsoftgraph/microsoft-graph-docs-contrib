---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.ServicePrincipals.Item.RemoveKey.RemoveKeyPostRequestBody
{
	KeyId = Guid.Parse("f0b0b335-1d71-4883-8f98-567911bfdca6"),
	Proof = "eyJ0eXAiOiJ...",
};
await graphClient.ServicePrincipals["{servicePrincipal-id}"].RemoveKey.PostAsync(requestBody);


```