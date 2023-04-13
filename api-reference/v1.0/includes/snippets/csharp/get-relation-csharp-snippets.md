---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var relations = await graphClient.Sites["{site-id}"].TermStore.Sets["{termStore.set-id}"].Relations
	.Request()
	.GetAsync();

```