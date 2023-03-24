---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewSchedule()
enabled := true
requestBody.SetEnabled(&enabled) 
timeZone := "America/Chicago"
requestBody.SetTimeZone(&timeZone) 

result, err := graphClient.TeamsById("team-id").Schedule().Put(context.Background(), requestBody, nil)


```