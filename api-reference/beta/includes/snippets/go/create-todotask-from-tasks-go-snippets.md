---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewTodoTask()
title := "A new task"
requestBody.SetTitle(&title)
requestBody.SetCategories( []String {
	"Important",
}
requestBody.SetLinkedResources( []LinkedResource {
	msgraphsdk.NewLinkedResource(),
webUrl := "http://microsoft.com"
	SetWebUrl(&webUrl)
applicationName := "Microsoft"
	SetApplicationName(&applicationName)
displayName := "Microsoft"
	SetDisplayName(&displayName)
}
todoTaskListId := "todoTaskList-id"
result, err := graphClient.Me().Todo().ListsById(&todoTaskListId).Tasks().Post(requestBody)


```