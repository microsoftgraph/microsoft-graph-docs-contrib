---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCalendar()
name := "Marketing calendar"
requestBody.SetName(&name) 

result, err := graphClient.Me().CalendarGroups().ByCalendarGroupId("calendarGroup-id").Calendars().Post(context.Background(), requestBody, nil)


```