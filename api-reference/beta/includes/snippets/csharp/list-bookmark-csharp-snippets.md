---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookmarks = await graphClient.Search.Bookmarks
	.Request()
	.GetAsync();

```