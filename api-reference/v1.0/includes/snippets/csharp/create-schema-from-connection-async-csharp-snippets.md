---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.ExternalConnectors.Schema
{
	BaseType = "microsoft.graph.externalItem",
	Properties = new List<Microsoft.Graph.Models.ExternalConnectors.Property>
	{
		new Microsoft.Graph.Models.ExternalConnectors.Property
		{
			Name = "ticketTitle",
			Type = Microsoft.Graph.Models.ExternalConnectors.PropertyType.String,
			IsSearchable = true,
			IsRetrievable = true,
			Labels = new List<Microsoft.Graph.Models.ExternalConnectors.Microsoft.Graph.Models.ExternalConnectors.Label?>
			{
				Microsoft.Graph.Models.ExternalConnectors.Label.Title,
			},
		},
		new Microsoft.Graph.Models.ExternalConnectors.Property
		{
			Name = "priority",
			Type = Microsoft.Graph.Models.ExternalConnectors.PropertyType.String,
			IsQueryable = true,
			IsRetrievable = true,
			IsSearchable = false,
		},
		new Microsoft.Graph.Models.ExternalConnectors.Property
		{
			Name = "assignee",
			Type = Microsoft.Graph.Models.ExternalConnectors.PropertyType.String,
			IsRetrievable = true,
		},
	},
};
var result = await graphClient.External.Connections["{externalConnection-id}"].Schema.PatchAsync(requestBody);


```