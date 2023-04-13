---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUpdateRecordingStatusPostRequestBody()
clientContext := "clientContext-value"
requestBody.SetClientContext(&clientContext) 
status := graphmodels.NOTRECORDING | RECORDING | FAILED_RECORDINGSTATUS 
requestBody.SetStatus(&status) 

result, err := graphClient.Communications().CallsById("call-id").UpdateRecordingStatus().Post(context.Background(), requestBody, nil)


```