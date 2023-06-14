---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "odata.maxpagesize=2")


requestStartdatetime := "2016-12-01T00:00:00Z"
requestEnddatetime := "2016-12-30T00:00:00Z"

requestParameters := &graphusers.ItemCalendarViewDelta()RequestBuilderGetQueryParameters{
	Startdatetime: &requestStartdatetime,
	Enddatetime: &requestEnddatetime,
}
configuration := &graphusers.ItemCalendarViewDelta()RequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().CalendarView().Delta().Get(context.Background(), configuration)


```