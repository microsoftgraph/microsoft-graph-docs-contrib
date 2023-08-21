---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestStartDateTime := "2017-01-01T19:00:00-08:00"
requestEndDateTime := "2017-01-07T19:00:00-08:00"

requestParameters := &graphusers.ItemCalendarCalendarViewRequestBuilderGetQueryParameters{
	StartDateTime: &requestStartDateTime,
	EndDateTime: &requestEndDateTime,
}
configuration := &graphusers.ItemCalendarCalendarViewRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

calendarView, err := graphClient.Me().Calendar().CalendarView().Get(context.Background(), configuration)


```