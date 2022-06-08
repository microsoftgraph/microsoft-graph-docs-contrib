---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

todoTaskListId := "todoTaskList-id"
todoTaskId := "todoTask-id"
checklistItemId := "checklistItem-id"
graphClient.Me().Todo().ListsById(&todoTaskListId).TasksById(&todoTaskId).ChecklistItemsById(&checklistItemId).Delete()


```