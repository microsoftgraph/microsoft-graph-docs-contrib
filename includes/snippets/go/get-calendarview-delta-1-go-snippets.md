---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "odata.maxpagesize=2")


requestStartdatetime := "2016-12-01T00:00:00Z"
requestEnddatetime := "2016-12-30T00:00:00Z"

requestParameters := &graphconfig.ItemCalendarViewDelta()RequestBuilderGetQueryParameters{
	Startdatetime: &requestStartdatetime,
	Enddatetime: &requestEnddatetime,
}
configuration := &graphconfig.ItemCalendarViewDelta()RequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().CalendarView().Delta().Get(context.Background(), configuration)


```