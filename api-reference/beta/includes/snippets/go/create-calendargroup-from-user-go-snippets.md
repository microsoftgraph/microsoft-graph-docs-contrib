---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCalendarGroup()
name := "Personal events"
requestBody.SetName(&name) 

result, err := graphClient.Me().CalendarGroups().Post(requestBody)


```