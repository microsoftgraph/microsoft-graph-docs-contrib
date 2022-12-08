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
			EntityType.Event
		},
		Query = new SearchQuery
		{
			QueryString = "contoso from:bob to:alice sent>2022-07-14"
		},
		From = 0,
		Size = 15,
		EnableTopResults = true
	}
};

await graphClient.Search
	.Query(requests)
	.Request()
	.PostAsync();

```