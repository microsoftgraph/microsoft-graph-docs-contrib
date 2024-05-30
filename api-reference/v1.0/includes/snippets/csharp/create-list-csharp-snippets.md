---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new List
{
	DisplayName = "Books",
	Columns = new List<ColumnDefinition>
	{
		new ColumnDefinition
		{
			Name = "Author",
			Text = new TextColumn
			{
			},
		},
		new ColumnDefinition
		{
			Name = "PageCount",
			Number = new NumberColumn
			{
			},
		},
	},
	List = new ListInfo
	{
		Template = "genericList",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Sites["{site-id}"].Lists.PostAsync(requestBody);


```