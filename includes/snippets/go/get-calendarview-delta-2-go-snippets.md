---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "odata.maxpagesize=2")


requestSkiptoken := "R0usmcCM996atia_s"

requestParameters := &graphconfig.MeCalendarViewMicrosoft.graph.delta()RequestBuilderGetQueryParameters{
	Skiptoken: &requestSkiptoken,
}
configuration := &graphconfig.MeCalendarViewMicrosoft.graph.delta()RequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().CalendarView().Delta().Get(context.Background(), configuration)


```