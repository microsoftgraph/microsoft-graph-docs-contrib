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

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "odata.maxpagesize=2")


requestSkiptoken := "R0usmcCM996atia_s"

requestParameters := &graphusers.ItemCalendarViewDelta()RequestBuilderGetQueryParameters{
	Skiptoken: &requestSkiptoken,
}
configuration := &graphusers.ItemCalendarViewDelta()RequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

delta(), err := graphClient.Me().CalendarView().Delta().Get(context.Background(), configuration)


```