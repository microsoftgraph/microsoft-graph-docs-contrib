---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewEvent()
originalStartTimeZone := "originalStartTimeZone-value"
requestBody.SetOriginalStartTimeZone(&originalStartTimeZone)
originalEndTimeZone := "originalEndTimeZone-value"
requestBody.SetOriginalEndTimeZone(&originalEndTimeZone)
responseStatus := msgraphsdk.NewResponseStatus()
requestBody.SetResponseStatus(responseStatus)
response := ""
responseStatus.SetResponse(&response)
time, err := time.Parse(time.RFC3339, "2016-10-19T10:37:00Z")
responseStatus.SetTime(&time)
requestBody.SetRecurrence(nil)
uid := "iCalUId-value"
requestBody.SetUid(&uid)
reminderMinutesBeforeStart := int32(99)
requestBody.SetReminderMinutesBeforeStart(&reminderMinutesBeforeStart)
isOnlineMeeting := true
requestBody.SetIsOnlineMeeting(&isOnlineMeeting)
onlineMeetingProvider := "teamsForBusiness"
requestBody.SetOnlineMeetingProvider(&onlineMeetingProvider)
isReminderOn := true
requestBody.SetIsReminderOn(&isReminderOn)
hideAttendees := false
requestBody.SetHideAttendees(&hideAttendees)
requestBody.SetCategories( []String {
	"Red category",
}
options := &msgraphsdk.EventRequestBuilderPatchOptions{
	Body: requestBody,
}
eventId := "event-id"
graphClient.Me().EventsById(&eventId).Patch(options)


```