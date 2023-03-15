---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewCancelPostRequestBody()
cancellationMessage := "Your appointment has been successfully cancelled. Please call us again."
requestBody.SetCancellationMessage(&cancellationMessage) 

graphClient.BookingBusinessesById("bookingBusiness-id").AppointmentsById("bookingAppointment-id").Cancel().Post(context.Background(), requestBody, nil)


```