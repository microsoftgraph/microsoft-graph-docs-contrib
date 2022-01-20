---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tasks = await graphClient.Me.Tasks.Lists["{baseTaskList-id}"].Tasks
	.Request()
	.GetAsync();

```