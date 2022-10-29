---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var acronyms = await graphClient.Search.Acronyms
	.Request()
	.GetAsync();

```