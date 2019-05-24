---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var items = await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items
	.Request()
	.GetAsync();

```