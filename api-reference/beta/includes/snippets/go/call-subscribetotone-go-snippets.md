---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSubscribeToTonePostRequestBody()
clientContext := "fd1c7836-4d84-4e24-b6aa-23188688cc54"
requestBody.SetClientContext(&clientContext) 

result, err := graphClient.Communications().CallsById("call-id").SubscribeToTone().Post(requestBody)


```