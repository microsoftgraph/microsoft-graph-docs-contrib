---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.TrustFramework.KeySets.Item.GenerateKey;

var requestBody = new GenerateKeyPostRequestBody
{
	Use = "sig",
	Kty = "RSA",
	Nbf = 1508969811L,
	Exp = 1508969811L,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.TrustFramework.KeySets["{trustFrameworkKeySet-id}"].GenerateKey.PostAsync(requestBody);


```