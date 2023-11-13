---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models.TermStore;

var requestBody = new Set
{
	OdataType = "#microsoft.graph.termStore.set",
	ParentGroup = new Group
	{
		Id = "fc733b51-10f1-40fd-b784-dc6d1e42804b",
	},
	LocalizedNames = new List<LocalizedName>
	{
		new LocalizedName
		{
			LanguageTag = "en-US",
			Name = "Department",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Sites["{site-id}"].TermStore.Sets.PostAsync(requestBody);


```