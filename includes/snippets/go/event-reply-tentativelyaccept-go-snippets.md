---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewTentativelyAcceptPostRequestBody()
comment := "I will probably be able to make it."
requestBody.SetComment(&comment) 
sendResponse := true
requestBody.SetSendResponse(&sendResponse) 

graphClient.Me().EventsById("event-id").MicrosoftGraphTentativelyAccept().Post(context.Background(), requestBody, nil)


```