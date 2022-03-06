---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Search.Acronyms["{search.acronym-id}"]
	.Request()
	.DeleteAsync();

```