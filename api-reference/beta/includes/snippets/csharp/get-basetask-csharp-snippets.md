---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var baseTask = await graphClient.Me.Tasks.Lists["{baseTaskList-id}"].Tasks["{baseTask-id}"]
	.Request()
	.GetAsync();

```