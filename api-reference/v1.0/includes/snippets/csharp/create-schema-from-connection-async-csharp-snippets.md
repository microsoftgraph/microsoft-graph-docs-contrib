---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models.ExternalConnectors;

var requestBody = new Schema
{
	BaseType = "microsoft.graph.externalItem",
	Properties = new List<Property>
	{
		new Property
		{
			Name = "ticketTitle",
			Type = PropertyType.String,
			IsSearchable = true,
			IsRetrievable = true,
			Labels = new List<Label?>
			{
				Label.Title,
			},
		},
		new Property
		{
			Name = "priority",
			Type = PropertyType.String,
			IsQueryable = true,
			IsRetrievable = true,
			IsSearchable = false,
		},
		new Property
		{
			Name = "assignee",
			Type = PropertyType.String,
			IsRetrievable = true,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.External.Connections["{externalConnection-id}"].Schema.PatchAsync(requestBody);


```