---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TrustFrameworkKeySet
{
	Id = "keyset1",
};
var result = await graphClient.TrustFramework.KeySets.PostAsync(requestBody);


```