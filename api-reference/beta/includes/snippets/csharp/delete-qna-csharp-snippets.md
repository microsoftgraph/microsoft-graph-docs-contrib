---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Search.Qnas["{search.qna-id}"]
	.Request()
	.DeleteAsync();

```