---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = await graphClient.Directory.DeletedItems
	.Request()
	.Header("ConsistencyLevel","eventual")
	.Select("id,displayName,deletedDateTime")
	.OrderBy("deletedDateTime asc")
	.GetAsync();

```