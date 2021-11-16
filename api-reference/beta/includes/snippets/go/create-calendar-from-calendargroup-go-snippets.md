---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewCalendar()
name := "Marketing calendar"
requestBody.SetName(&name)
options := &msgraphsdk.CalendarsRequestBuilderPostOptions{
	Body: requestBody,
}
calendarGroupId := "calendarGroup-id"
result, err := graphClient.Me().CalendarGroupsById(&calendarGroupId).Calendars().Post(options)


```