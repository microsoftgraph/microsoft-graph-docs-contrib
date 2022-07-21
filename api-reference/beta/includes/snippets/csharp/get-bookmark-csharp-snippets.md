---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookmark = await graphClient.Search.Bookmarks["{search.bookmark-id}"]
	.Request()
	.GetAsync();

```