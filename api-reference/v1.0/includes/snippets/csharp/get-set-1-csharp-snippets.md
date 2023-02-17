---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sets = await graphClient.Sites["{site-id}"].TermStore.Groups["{termStore.group-id}"].Sets
	.Request()
	.GetAsync();

```