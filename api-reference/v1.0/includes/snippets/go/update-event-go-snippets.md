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
recurrence := null
requestBody.SetRecurrence(&recurrence) 
reminderMinutesBeforeStart := int32(99)
requestBody.SetReminderMinutesBeforeStart(&reminderMinutesBeforeStart) 
isOnlineMeeting := true
requestBody.SetIsOnlineMeeting(&isOnlineMeeting) 
onlineMeetingProvider := graphmodels.TEAMSFORBUSINESS_ONLINEMEETINGPROVIDERTYPE 
requestBody.SetOnlineMeetingProvider(&onlineMeetingProvider) 
isReminderOn := true
requestBody.SetIsReminderOn(&isReminderOn) 
hideAttendees := false
requestBody.SetHideAttendees(&hideAttendees) 
categories := []string {
	"Red category",

}
requestBody.SetCategories(categories)

graphClient.Me().EventsById("event-id").Patch(context.Background(), requestBody, nil)


```