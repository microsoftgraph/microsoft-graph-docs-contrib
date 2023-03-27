---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Search.Acronym
{
	Description = "A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers.",
};
var result = await graphClient.Search.Acronyms["{acronym-id}"].PatchAsync(requestBody);


```