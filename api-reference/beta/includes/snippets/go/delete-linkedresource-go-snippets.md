---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

todoTaskListId := "todoTaskList-id"
todoTaskId := "todoTask-id"
linkedResourceId := "linkedResource-id"
graphClient.Me().Todo().ListsById(&todoTaskListId).TasksById(&todoTaskId).LinkedResourcesById(&linkedResourceId).Delete(options)


```