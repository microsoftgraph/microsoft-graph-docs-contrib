---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("select", "summary")
};

var channel = await graphClient.Teams["{team-id}"].Channels["{channel-id}"]
	.Request(queryOptions)
	.GetAsync();

```