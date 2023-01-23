---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$search", "\"Irene McGowen\"")
};

var people = await graphClient.Me.People
	.Request( queryOptions )
	.GetAsync();

```