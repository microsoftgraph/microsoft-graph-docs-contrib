---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.TermStore.Store
{
	DefaultLanguageTag = "en-US",
};
var result = await graphClient.TermStore.PatchAsync(requestBody);


```