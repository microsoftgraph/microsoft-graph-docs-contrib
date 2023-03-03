---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCalendarPermission()
role := graphmodels.WRITE_CALENDARROLETYPE 
requestBody.SetRole(&role) 

result, err := graphClient.UsersById("user-id").CalendarsById("calendar-id").CalendarPermissionsById("calendarPermission-id").Patch(context.Background(), requestBody, nil)


```