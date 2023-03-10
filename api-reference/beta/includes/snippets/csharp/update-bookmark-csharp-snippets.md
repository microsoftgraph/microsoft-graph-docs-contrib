---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Search.Bookmark
{
	Description = "Book a fancy vacation in Tuscany or browse museums in Florence.",
};
var result = await graphClient.Search.Bookmarks["{bookmark-id}"].PatchAsync(requestBody);


```