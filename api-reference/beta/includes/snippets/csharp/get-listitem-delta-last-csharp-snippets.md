---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("token", "1230919asd190410jlka")
};

var delta = await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items
	.Delta()
	.Request( queryOptions )
	.GetAsync();

```