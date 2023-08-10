---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Search.Query.QueryPostRequestBody
{
	Requests = new List<SearchRequest>
	{
		new SearchRequest
		{
			EntityTypes = new List<EntityType?>
			{
				EntityType.ListItem,
			},
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
var result = await graphClient.Search.Query.PostAsync(requestBody);


```