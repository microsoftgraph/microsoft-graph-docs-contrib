---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("select", "id,expand=webparts")
};

var response = await graphClient.Sites["{site-id}"].Pages["{sitePage-id}"].CanvasLayout.HorizontalSections["{UNKNOWN-id}"].Columns["{UNKNOWN-id}"]
	.Request( queryOptions )
	.GetAsync();

```