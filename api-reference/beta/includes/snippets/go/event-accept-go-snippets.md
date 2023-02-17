---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAcceptPostRequestBody()
comment := "comment-value"
requestBody.SetComment(&comment) 
sendResponse := true
requestBody.SetSendResponse(&sendResponse) 

graphClient.Me().EventsById("event-id").Accept().Post(context.Background(), requestBody, nil)


```