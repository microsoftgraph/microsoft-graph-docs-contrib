---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewTodoTask()
title := "A new task"
requestBody.SetTitle(&title)
requestBody.SetLinkedResources( []LinkedResource {
	msgraphsdk.NewLinkedResource(),
	SetAdditionalData(map[string]interface{}{
		"webUrl": "http://microsoft.com",
		"applicationName": "Microsoft",
		"displayName": "Microsoft",
	}
}
options := &msgraphsdk.TasksRequestBuilderPostOptions{
	Body: requestBody,
}
todoTaskListId := "todoTaskList-id"
result, err := graphClient.Me().Todo().ListsById(&todoTaskListId).Tasks().Post(options);


```