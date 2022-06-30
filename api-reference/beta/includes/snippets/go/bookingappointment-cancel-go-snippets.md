---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewCancellationMessageRequestBody()
cancellationMessage := "Your appointment has been successfully cancelled. Please call us again."
requestBody.SetCancellationMessage(&cancellationMessage)
bookingBusinessId := "bookingBusiness-id"
bookingAppointmentId := "bookingAppointment-id"
graphClient.BookingBusinessesById(&bookingBusinessId).AppointmentsById(&bookingAppointmentId).Cancel(bookingBusiness-id, bookingAppointment-id).Post(requestBody)


```