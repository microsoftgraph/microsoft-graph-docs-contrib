---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.CalendarViewRequestBuilderGetQueryParameters{
	StartDateTime: "2020-01-01T19:00:00-08:00",
	EndDateTime: "2020-01-02T19:00:00-08:00",
}
configuration := &graphconfig.CalendarViewRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().CalendarView().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```