---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewProgram()
displayName := "testprogram3"
requestBody.SetDisplayName(&displayName) 
description := "test description"
requestBody.SetDescription(&description) 

result, err := graphClient.Programs().Post(requestBody)


```