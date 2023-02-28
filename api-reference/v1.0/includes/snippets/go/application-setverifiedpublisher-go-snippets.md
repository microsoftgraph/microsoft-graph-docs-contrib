---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSetVerifiedPublisherPostRequestBody()
verifiedPublisherId := "1234567"
requestBody.SetVerifiedPublisherId(&verifiedPublisherId) 

graphClient.ApplicationsById("application-id").MicrosoftGraphSetVerifiedPublisher().Post(context.Background(), requestBody, nil)


```