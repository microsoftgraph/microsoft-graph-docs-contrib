---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewBaseTaskList()
displayName := "Shopping list"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Me().Tasks().Lists().Post(requestBody)


```