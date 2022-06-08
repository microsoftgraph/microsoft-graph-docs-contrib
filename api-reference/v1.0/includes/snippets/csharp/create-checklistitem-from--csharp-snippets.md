---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var checklistItem = new ChecklistItem
{
	DisplayName = "Final sign-off from the team"
};

await graphClient.Me.Todo.Lists["{todoTaskList-id}"].Tasks["{todoTask-id}"].ChecklistItems
	.Request()
	.AddAsync(checklistItem);

```