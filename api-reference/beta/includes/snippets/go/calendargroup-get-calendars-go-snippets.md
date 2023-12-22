---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



calendars, err := graphClient.Me().CalendarGroups().ByCalendarGroupId("calendarGroup-id").Calendars().Get(context.Background(), nil)


```