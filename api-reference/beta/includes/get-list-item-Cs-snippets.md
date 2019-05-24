---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var listItem = await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items["{item-id}"]
	.Request()
	.GetAsync();

```