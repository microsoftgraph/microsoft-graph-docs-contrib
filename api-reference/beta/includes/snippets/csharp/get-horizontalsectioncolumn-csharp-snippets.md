---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("select", "id,expand=webparts")
};

var horizontalSectionColumn = await graphClient.Sites["{site-id}"].Pages["{sitePage-id}"].CanvasLayout.HorizontalSections["{horizontalSection-id}"].Columns["{horizontalSectionColumn-id}"]
	.Request( queryOptions )
	.GetAsync();

```