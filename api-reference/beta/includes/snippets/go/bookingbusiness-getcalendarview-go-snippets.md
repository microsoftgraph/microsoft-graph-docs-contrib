---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.CalendarViewRequestBuilderGetQueryParameters{
	Start: "2018-04-30T00:00:00Z",
	End: "2018-05-10T00:00:00Z",
}
configuration := &graphconfig.CalendarViewRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.BookingBusinessesById("bookingBusiness-id").CalendarView().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```