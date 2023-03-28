---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewBookingService()
defaultDuration , err := abstractions.ParseISODuration("PT30M")
requestBody.SetDefaultDuration(&defaultDuration) 

result, err := graphClient.BookingBusinessesById("bookingBusiness-id").ServicesById("bookingService-id").Patch(context.Background(), requestBody, nil)


```