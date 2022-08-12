---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewBookingAppointment()
"@odata.type" := "#microsoft.graph.bookingAppointment"
requestBody.Set"@odata.type"(&"@odata.type") 
endDateTime := graphmodels.NewDateTimeTimeZone()
"@odata.type" := "#microsoft.graph.dateTimeTimeZone"
endDateTime.Set"@odata.type"(&"@odata.type") 
dateTime := "2018-05-06T12:30:00.0000000+00:00"
endDateTime.SetDateTime(&dateTime) 
timeZone := "UTC"
endDateTime.SetTimeZone(&timeZone) 
requestBody.SetEndDateTime(endDateTime)
startDateTime := graphmodels.NewDateTimeTimeZone()
"@odata.type" := "#microsoft.graph.dateTimeTimeZone"
startDateTime.Set"@odata.type"(&"@odata.type") 
dateTime := "2018-05-06T12:00:00.0000000+00:00"
startDateTime.SetDateTime(&dateTime) 
timeZone := "UTC"
startDateTime.SetTimeZone(&timeZone) 
requestBody.SetStartDateTime(startDateTime)

graphClient.Solutions().BookingBusinessesById("bookingBusiness-id").AppointmentsById("bookingAppointment-id").Patch(requestBody)


```