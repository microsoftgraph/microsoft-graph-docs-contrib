---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewRejectPostRequestBody()
reason := graphmodels.NONE_REJECTREASON 
requestBody.SetReason(&reason) 

graphClient.Communications().CallsById("call-id").MicrosoftGraphReject().Post(context.Background(), requestBody, nil)


```