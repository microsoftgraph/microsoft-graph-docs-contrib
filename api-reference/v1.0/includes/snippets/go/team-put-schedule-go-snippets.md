---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSchedulePostRequestBody()
additionalData := map[string]interface{}{
	enabled := true
requestBody.SetEnabled(&enabled) 
	"timeZone" : "America/Chicago", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.TeamsById("team-id").Schedule().Put(requestBody)


```