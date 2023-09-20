---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCalendar()
name := "Marketing calendar"
requestBody.SetName(&name) 

calendars, err := graphClient.Me().CalendarGroups().ByCalendarGroupId("calendarGroup-id").Calendars().Post(context.Background(), requestBody, nil)


```