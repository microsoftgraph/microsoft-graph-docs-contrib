---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewRemoveKeyPostRequestBody()
keyId := uuid.MustParse("f0b0b335-1d71-4883-8f98-567911bfdca6")
requestBody.SetKeyId(&keyId) 
proof := "eyJ0eXAiOiJ..."
requestBody.SetProof(&proof) 

graphClient.ApplicationsById("application-id").RemoveKey().Post(context.Background(), requestBody, nil)


```