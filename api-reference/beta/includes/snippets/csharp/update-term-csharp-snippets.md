---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.TermStore.Term
{
	Labels = new List<Microsoft.Graph.Beta.Models.TermStore.LocalizedLabel>
	{
		new Microsoft.Graph.Beta.Models.TermStore.LocalizedLabel
		{
			Name = "changedLabel",
			LanguageTag = "en-US",
			IsDefault = true,
		},
	},
};
var result = await graphClient.TermStore.Sets["{set-id}"].Terms["{term-id}"].PatchAsync(requestBody);


```