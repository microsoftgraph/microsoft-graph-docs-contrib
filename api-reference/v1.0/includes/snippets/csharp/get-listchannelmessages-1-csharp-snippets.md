---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("top", "3")
};

var messages = await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Messages
	.Request( queryOptions )
	.GetAsync();

```