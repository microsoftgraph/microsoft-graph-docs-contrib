---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("select", "id,expand=columns")
};

var response = await graphClient.Sites["{site-id}"].Pages["{sitePage-id}"].CanvasLayout.HorizontalSections["{UNKNOWN-id}"]
	.Request( queryOptions )
	.GetAsync();

```