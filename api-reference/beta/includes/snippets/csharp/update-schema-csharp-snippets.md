---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.ExternalConnectors.Schema
{
	BaseType = "microsoft.graph.externalItem",
	Properties = new List<Microsoft.Graph.Beta.Models.ExternalConnectors.Property>
	{
		new Microsoft.Graph.Beta.Models.ExternalConnectors.Property
		{
			Name = "ticketTitle",
			Type = Microsoft.Graph.Beta.Models.ExternalConnectors.PropertyType.String,
			IsSearchable = true,
			IsRetrievable = true,
			Labels = new List<Microsoft.Graph.Beta.Models.ExternalConnectors.Label?>
			{
				Microsoft.Graph.Beta.Models.ExternalConnectors.Label.Title,
			},
		},
		new Microsoft.Graph.Beta.Models.ExternalConnectors.Property
		{
			Name = "priority",
			Type = Microsoft.Graph.Beta.Models.ExternalConnectors.PropertyType.String,
			IsQueryable = true,
			IsRetrievable = true,
			IsSearchable = false,
		},
		new Microsoft.Graph.Beta.Models.ExternalConnectors.Property
		{
			Name = "assignee",
			Type = Microsoft.Graph.Beta.Models.ExternalConnectors.PropertyType.String,
			IsRetrievable = true,
		},
	},
};
var result = await graphClient.External.Connections["{externalConnection-id}"].Schema.PatchAsync(requestBody);


```