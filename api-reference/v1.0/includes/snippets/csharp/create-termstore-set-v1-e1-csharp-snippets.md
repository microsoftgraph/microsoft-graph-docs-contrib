---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.TermStore.Set
{
	OdataType = "#microsoft.graph.termStore.set",
	ParentGroup = new Microsoft.Graph.Models.TermStore.Group
	{
		Id = "fc733b51-10f1-40fd-b784-dc6d1e42804b",
	},
	LocalizedNames = new List<Microsoft.Graph.Models.TermStore.LocalizedName>
	{
		new Microsoft.Graph.Models.TermStore.LocalizedName
		{
			LanguageTag = "en-US",
			Name = "Department",
		},
	},
};
var result = await graphClient.Sites["{site-id}"].TermStore.Sets.PostAsync(requestBody);


```