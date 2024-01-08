---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new ColumnDefinition
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"sourceColumn@odata.bind" , "https://graph.microsoft.com/v1.0/sites/root/columns/99ddcf45-e2f7-4f17-82b0-6fba34445103"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Sites["{site-id}"].ContentTypes["{contentType-id}"].Columns.PostAsync(requestBody);


```