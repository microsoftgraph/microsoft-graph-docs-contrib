---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.CalendarViewRequestBuilderGetQueryParameters{
	StartDateTime: "2020-01-01T19:00:00-08:00",
	EndDateTime: "2020-01-02T19:00:00-08:00",
}
options := &msgraphsdk.CalendarViewRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.Me().CalendarView().Get(options)


```