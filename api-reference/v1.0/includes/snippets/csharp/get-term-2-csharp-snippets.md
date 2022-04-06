---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var children = await graphClient.Sites["{site-id}"].TermStore.Sets["{termStore.set-id}"].Children
	.Request()
	.GetAsync();

```