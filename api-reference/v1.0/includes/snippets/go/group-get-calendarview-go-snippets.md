---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"Prefer": "outlook.body-content-type=\"text\"",
}
requestParameters := &graphconfig.CalendarViewRequestBuilderGetQueryParameters{
	StartDateTime: "2017-01-01T19:00:00-08:00",
	EndDateTime: "2017-10-01T19:00:00.00-08:00",
}
configuration := &graphconfig.CalendarViewRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.GroupsById("group-id").CalendarView().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```