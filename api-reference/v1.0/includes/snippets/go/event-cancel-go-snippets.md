---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCancelPostRequestBody()
comment := "Cancelling for this week due to all hands"
requestBody.SetComment(&comment) 

graphClient.Me().EventsById("event-id").MicrosoftGraphCancel().Post(context.Background(), requestBody, nil)


```