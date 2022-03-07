---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var baseTaskList = new BaseTaskList
{
	DisplayName = "Shopping list"
};

await graphClient.Me.Tasks.Lists
	.Request()
	.AddAsync(baseTaskList);

```