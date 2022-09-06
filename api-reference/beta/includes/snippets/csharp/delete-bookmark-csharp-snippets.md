---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Search.Bookmarks["{search.bookmark-id}"]
	.Request()
	.DeleteAsync();

```