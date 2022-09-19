---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCalendar()
name := "Marketing calendar"
requestBody.SetName(&name) 

result, err := graphClient.Me().CalendarGroupsById("calendarGroup-id").Calendars().Post(context.Background(), requestBody, nil)


```