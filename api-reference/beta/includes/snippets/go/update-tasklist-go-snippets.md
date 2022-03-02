---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewBaseTaskList()
displayName := "Travel Plan"
requestBody.SetDisplayName(&displayName)
options := &msgraphsdk.BaseTaskListRequestBuilderPatchOptions{
	Body: requestBody,
}
baseTaskListId := "baseTaskList-id"
graphClient.Me().Tasks().ListsById(&baseTaskListId).Patch(options)


```