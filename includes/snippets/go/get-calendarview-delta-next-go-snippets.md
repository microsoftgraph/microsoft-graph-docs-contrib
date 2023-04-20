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


requestDeltatoken := "R0usmcMDNGg0J1E"

requestParameters := &graphconfig.ItemCalendarViewDelta()RequestBuilderGetQueryParameters{
	Deltatoken: &requestDeltatoken,
}
configuration := &graphconfig.ItemCalendarViewDelta()RequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().CalendarView().Delta().Get(context.Background(), configuration)


```