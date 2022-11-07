---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var requests = new List<SearchRequestObject>()
{
	new SearchRequestObject
	{
		EntityTypes = new List<EntityType>()
		{
			EntityType.ChatMessage
		},
		Query = new SearchQuery
		{
			QueryString = "test"
		},
		From = 0,
		Size = 25
	}
};

await graphClient.Search
	.Query(requests)
	.Request()
	.PostAsync();

```