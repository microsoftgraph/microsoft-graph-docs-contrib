---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSecureScoreControlProfile()
controlStateUpdates := "controlStateUpdates-value"
requestBody.SetControlStateUpdates(&controlStateUpdates) 

result, err := graphClient.Security().SecureScoreControlProfilesById("secureScoreControlProfile-id").Patch(context.Background(), requestBody, nil)


```