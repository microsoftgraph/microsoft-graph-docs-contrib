---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewSecureScoreControlProfile()
controlStateUpdates := "controlStateUpdates-value"
requestBody.SetControlStateUpdates(&controlStateUpdates)
secureScoreControlProfileId := "secureScoreControlProfile-id"
graphClient.Security().SecureScoreControlProfilesById(&secureScoreControlProfileId).Patch(requestBody)


```