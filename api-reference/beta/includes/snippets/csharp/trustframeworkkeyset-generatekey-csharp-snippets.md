---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.TrustFramework.KeySets.Item.GenerateKey.GenerateKeyPostRequestBody
{
	Use = "sig",
	Kty = "RSA",
	Nbf = 1508969811L,
	Exp = 1508969811L,
};
var result = await graphClient.TrustFramework.KeySets["{trustFrameworkKeySet-id}"].GenerateKey.PostAsync(requestBody);


```