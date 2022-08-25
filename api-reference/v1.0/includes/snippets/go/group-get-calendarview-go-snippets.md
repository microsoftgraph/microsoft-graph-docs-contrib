---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"Prefer": "outlook.body-content-type=\"text\"",
}

requestStartDateTime := "2017-01-01T19:00:00-08:00"
requestEndDateTime := "2017-10-01T19:00:00.00-08:00"

requestParameters := &graphconfig.CalendarViewRequestBuilderGetQueryParameters{
	StartDateTime: &requestStartDateTime,
	EndDateTime: &requestEndDateTime,
}
configuration := &graphconfig.CalendarViewRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.GroupsById("group-id").CalendarView().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```