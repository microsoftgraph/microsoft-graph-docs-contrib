---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$count", "true")
};

var contacts = await graphClient.Contacts
	.Request( queryOptions )
	.Header("ConsistencyLevel","eventual")
	.Search("displayName:wa")
	.GetAsync();

```