---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestStartDateTime := "2020-01-01T19:00:00-08:00"
requestEndDateTime := "2020-01-02T19:00:00-08:00"

requestParameters := &graphconfig.MeCalendarViewRequestBuilderGetQueryParameters{
	StartDateTime: &requestStartDateTime,
	EndDateTime: &requestEndDateTime,
}
configuration := &graphconfig.MeCalendarViewRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().CalendarView().Get(context.Background(), configuration)


```