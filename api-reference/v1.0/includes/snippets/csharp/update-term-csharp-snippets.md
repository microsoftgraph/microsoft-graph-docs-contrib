---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.TermStore.Term
{
	Labels = new List<Microsoft.Graph.Models.TermStore.LocalizedLabel>
	{
		new Microsoft.Graph.Models.TermStore.LocalizedLabel
		{
			Name = "changedLabel",
			LanguageTag = "en-US",
			IsDefault = true,
		},
	},
};
var result = await graphClient.Sites["{site-id}"].TermStore.Sets["{set-id}"].Terms["{term-id}"].PatchAsync(requestBody);


```