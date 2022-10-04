---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var operations = await graphClient.Sites["{site-id}"].Operations
	.Request()
	.GetAsync();

```