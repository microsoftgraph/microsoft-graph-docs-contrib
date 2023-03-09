---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewRejectPostRequestBody()
reason := graphmodels.BUSY_REJECTREASON 
requestBody.SetReason(&reason) 

graphClient.Communications().CallsById("call-id").Reject().Post(context.Background(), requestBody, nil)


```