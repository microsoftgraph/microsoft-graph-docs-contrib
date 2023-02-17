---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "odata.maxpagesize=2")


requestDeltatoken := "R0usmcMDNGg0J1E"

requestParameters := &graphconfig.MeCalendarViewMicrosoft.graph.delta()RequestBuilderGetQueryParameters{
	Deltatoken: &requestDeltatoken,
}
configuration := &graphconfig.MeCalendarViewMicrosoft.graph.delta()RequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().CalendarView().Delta().Get(context.Background(), configuration)


```