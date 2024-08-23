---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ListItem
{
	Fields = new FieldValueSet
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"Title" , "Widget"
			},
			{
				"Color" , "Purple"
			},
			{
				"Weight" , 32
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items.PostAsync(requestBody);


```