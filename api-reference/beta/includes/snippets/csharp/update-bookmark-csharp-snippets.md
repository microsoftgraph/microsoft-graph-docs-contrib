---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookmark = new Microsoft.Graph.Search.Bookmark
{
	Description = "Book a fancy vacation in Tuscany or browse museums in Florence."
};

await graphClient.Search.Bookmarks["{search.bookmark-id}"]
	.Request()
	.UpdateAsync(bookmark);

```