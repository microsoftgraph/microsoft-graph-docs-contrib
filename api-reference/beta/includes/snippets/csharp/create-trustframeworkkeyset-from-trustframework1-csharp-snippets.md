---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TrustFrameworkKeySet
{
	Id = "keyset1",
};
var result = await graphClient.TrustFramework.KeySets.PostAsync(requestBody);


```