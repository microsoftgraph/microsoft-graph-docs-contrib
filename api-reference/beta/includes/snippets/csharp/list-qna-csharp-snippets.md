---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var qnas = await graphClient.Search.Qnas
	.Request()
	.GetAsync();

```