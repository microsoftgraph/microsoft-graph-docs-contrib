---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewNewReminderTimeRequestBody()
newReminderTime := msgraphsdk.NewDateTimeTimeZone()
requestBody.SetNewReminderTime(newReminderTime)
dateTime := "2016-10-19T10:37:00Z"
newReminderTime.SetDateTime(&dateTime)
timeZone := "timeZone-value"
newReminderTime.SetTimeZone(&timeZone)
eventId := "event-id"
graphClient.Me().EventsById(&eventId).SnoozeReminder(event-id).Post(requestBody)


```