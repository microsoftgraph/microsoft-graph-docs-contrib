---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "odata.maxpagesize=2")


requestStartdatetime := "2016-12-01T00:00:00Z"
requestEnddatetime := "2016-12-30T00:00:00Z"

requestParameters := &graphconfig.MeCalendarViewDelta()RequestBuilderGetQueryParameters{
	Startdatetime: &requestStartdatetime,
	Enddatetime: &requestEnddatetime,
}
configuration := &graphconfig.MeCalendarViewDelta()RequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().CalendarView().Delta().Get(context.Background(), configuration)


```