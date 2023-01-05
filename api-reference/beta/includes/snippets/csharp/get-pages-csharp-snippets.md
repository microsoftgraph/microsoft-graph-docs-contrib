---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var pages = await graphClient.Sites["{site-id}"].Pages
	.Request()
	.GetAsync();

```