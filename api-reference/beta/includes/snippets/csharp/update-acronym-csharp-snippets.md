---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var acronym = new Microsoft.Graph.Search.Acronym
{
	Description = "A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers."
};

await graphClient.Search.Acronyms["{search.acronym-id}"]
	.Request()
	.UpdateAsync(acronym);

```