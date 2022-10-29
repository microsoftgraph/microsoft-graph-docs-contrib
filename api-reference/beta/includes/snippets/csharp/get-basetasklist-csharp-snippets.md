---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var baseTaskList = await graphClient.Me.Tasks.Lists["{baseTaskList-id}"]
	.Request()
	.GetAsync();

```