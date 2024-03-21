---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Search.Query;
using Microsoft.Graph.Beta.Models;

var requestBody = new QueryPostRequestBody
{
	Requests = new List<SearchRequest>
	{
		new SearchRequest
		{
			EntityTypes = new List<EntityType?>
			{
				EntityType.ExternalItem,
			},
			ContentSources = new List<string>
			{
				"/external/connections/connectionfriendlyname",
			},
			Region = "US",
			Query = new SearchQuery
			{
				QueryString = "contoso product",
			},
			From = 0,
			Size = 25,
			Fields = new List<string>
			{
				"title",
				"description",
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Search.Query.PostAsQueryPostResponseAsync(requestBody);


```