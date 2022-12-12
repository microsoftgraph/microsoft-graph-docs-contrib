---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("select", "emphasis,expand=webparts")
};

var verticalSection = await graphClient.Sites["{site-id}"].Pages["{sitePage-id}"].CanvasLayout.VerticalSection
	.Request( queryOptions )
	.GetAsync();

```