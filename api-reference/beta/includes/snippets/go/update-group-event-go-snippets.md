---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEvent()
originalStartTimeZone := "originalStartTimeZone-value"
requestBody.SetOriginalStartTimeZone(&originalStartTimeZone) 
originalEndTimeZone := "originalEndTimeZone-value"
requestBody.SetOriginalEndTimeZone(&originalEndTimeZone) 
responseStatus := graphmodels.NewResponseStatus()
time , err := time.Parse(time.RFC3339, "datetime-value")
responseStatus.SetTime(&time) 
requestBody.SetResponseStatus(responseStatus)
uid := "iCalUId-value"
requestBody.SetUid(&uid) 
reminderMinutesBeforeStart := int32(99)
requestBody.SetReminderMinutesBeforeStart(&reminderMinutesBeforeStart) 
isReminderOn := true
requestBody.SetIsReminderOn(&isReminderOn) 

graphClient.GroupsById("group-id").EventsById("event-id").Patch(context.Background(), requestBody, nil)


```