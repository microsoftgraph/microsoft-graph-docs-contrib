---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var store = await graphClient.Sites["{site-id}"].TermStore
	.Request()
	.GetAsync();

```