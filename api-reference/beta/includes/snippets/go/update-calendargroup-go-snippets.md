---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCalendarGroup()
name := "name-value"
requestBody.SetName(&name) 

graphClient.Me().CalendarGroupsById("calendarGroup-id").Patch(context.Background(), requestBody, nil)


```