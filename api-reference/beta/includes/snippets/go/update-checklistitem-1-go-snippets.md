---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewChecklistItem()
displayName := "buy cake"
requestBody.SetDisplayName(&displayName)
todoTaskListId := "todoTaskList-id"
todoTaskId := "todoTask-id"
checklistItemId := "checklistItem-id"
graphClient.Me().Todo().ListsById(&todoTaskListId).TasksById(&todoTaskId).ChecklistItemsById(&checklistItemId).Patch(requestBody)


```