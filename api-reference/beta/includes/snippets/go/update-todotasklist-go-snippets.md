---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewTodoTaskList()
displayName := "Vacation Plan"
requestBody.SetDisplayName(&displayName) 

graphClient.Me().Todo().ListsById("todoTaskList-id").Patch(requestBody)


```