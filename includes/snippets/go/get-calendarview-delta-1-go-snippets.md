---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "odata.maxpagesize=2")


requestStartdatetime := "2016-12-01T00:00:00Z"
requestEnddatetime := "2016-12-30T00:00:00Z"

requestParameters := &graphconfig.MeCalendarViewMicrosoft.graph.delta()RequestBuilderGetQueryParameters{
	Startdatetime: &requestStartdatetime,
	Enddatetime: &requestEnddatetime,
}
configuration := &graphconfig.MeCalendarViewMicrosoft.graph.delta()RequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().CalendarView().MicrosoftGraphDelta().Get(context.Background(), configuration)


```