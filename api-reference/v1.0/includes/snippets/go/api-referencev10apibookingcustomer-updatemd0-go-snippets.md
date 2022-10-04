---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewBookingCustomerBase()
additionalData := map[string]interface{}{
	"displayName" : "Adele", 
	"emailAddress" : "adele@relecloud.com", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Solutions().BookingBusinessesById("bookingBusiness-id").CustomersById("bookingCustomerBase-id").Patch(context.Background(), requestBody, nil)


```