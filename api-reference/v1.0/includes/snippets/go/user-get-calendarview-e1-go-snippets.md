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



requestStartDateTime := "2020-01-01T19:00:00-08:00"
requestEndDateTime := "2020-01-02T19:00:00-08:00"

requestParameters := &graphusers.ItemCalendarViewRequestBuilderGetQueryParameters{
	StartDateTime: &requestStartDateTime,
	EndDateTime: &requestEndDateTime,
}
configuration := &graphusers.ItemCalendarViewRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

calendarView, err := graphClient.Me().CalendarView().Get(context.Background(), configuration)


```