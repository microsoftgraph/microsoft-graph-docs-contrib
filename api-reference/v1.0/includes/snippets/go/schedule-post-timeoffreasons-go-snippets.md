---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewTimeOffReason()
displayName := "Vacation"
requestBody.SetDisplayName(&displayName) 
iconType := graphmodels.PLANE_TIMEOFFREASONICONTYPE 
requestBody.SetIconType(&iconType) 
isActive := true
requestBody.SetIsActive(&isActive) 

result, err := graphClient.TeamsById("team-id").Schedule().TimeOffReasons().Post(requestBody)


```