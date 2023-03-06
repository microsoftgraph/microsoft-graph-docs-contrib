---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Search.Query.QueryPostRequestBody
{
	Requests = new List<SearchRequest>
	{
		new SearchRequest
		{
			EntityTypes = new List<EntityType?>
			{
				EntityType.ChatMessage,
			},
			Query = new SearchQuery
			{
				QueryString = "test",
			},
			From = 0,
			Size = 15,
			EnableTopResults = true,
		},
	},
};
var result = await graphClient.Search.Query.PostAsync(requestBody);


```