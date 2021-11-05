---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.CalendarViewRequestBuilderGetQueryParameters{
	StartDateTime: "2017-01-01T19:00:00-08:00",
	EndDateTime: "2017-01-07T19:00:00-08:00",
}
options := &msgraphsdk.CalendarViewRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.Me().Calendar().CalendarView().Get(options);


```