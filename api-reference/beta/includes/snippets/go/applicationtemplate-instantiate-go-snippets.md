---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewInstantiatePostRequestBody()
displayName := "testProperties"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.ApplicationTemplatesById("applicationTemplate-id").Instantiate().Post(requestBody)


```