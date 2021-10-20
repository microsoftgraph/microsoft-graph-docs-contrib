---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groups = await graphClient.Sites["{site-id}"].TermStore.Groups
	.Request()
	.GetAsync();

```