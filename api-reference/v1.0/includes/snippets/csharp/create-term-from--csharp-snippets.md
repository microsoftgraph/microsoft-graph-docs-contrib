---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models.TermStore;

var requestBody = new Term
{
	Labels = new List<LocalizedLabel>
	{
		new LocalizedLabel
		{
			LanguageTag = "en-US",
			Name = "Car",
			IsDefault = true,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Sites["{site-id}"].TermStore.Sets["{set-id}"].Children.PostAsync(requestBody);


```