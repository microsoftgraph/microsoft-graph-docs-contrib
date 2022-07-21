---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewTodoTaskList()
displayName := "Travel items"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Me().Todo().Lists().Post(requestBody)


```