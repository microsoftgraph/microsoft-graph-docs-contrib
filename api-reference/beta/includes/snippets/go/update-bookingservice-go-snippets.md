---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewBookingService()
defaultDuration := "PT30M"
requestBody.SetDefaultDuration(&defaultDuration)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.bookingService",
}
options := &msgraphsdk.BookingServiceRequestBuilderPatchOptions{
	Body: requestBody,
}
bookingBusinessId := "bookingBusiness-id"
bookingServiceId := "bookingService-id"
graphClient.BookingBusinessesById(&bookingBusinessId).ServicesById(&bookingServiceId).Patch(options)


```