---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("select", "id,title"),
	new QueryOption("expand", "webparts")
};

var sitePage = await graphClient.Sites["{site-id}"].Pages["{sitePage-id}"]
	.Request( queryOptions )
	.GetAsync();

```