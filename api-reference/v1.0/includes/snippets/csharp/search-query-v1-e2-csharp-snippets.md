---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Search.Query;
using Microsoft.Graph.Models;

var requestBody = new QueryPostRequestBody
{
	Requests = new List<SearchRequest>
	{
		new SearchRequest
		{
			EntityTypes = new List<EntityType?>
			{
				EntityType.ListItem,
			},
			Region = "US",
			Query = new SearchQuery
			{
				QueryString = "contoso",
				QueryTemplate = "{searchTerms} CreatedBy:Bob",
			},
			From = 0,
			Size = 25,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Search.Query.PostAsQueryPostResponseAsync(requestBody);


```