---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var qna = await graphClient.Search.Qnas["{search.qna-id}"]
	.Request()
	.GetAsync();

```