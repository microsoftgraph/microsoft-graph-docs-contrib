---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewBookingAppointment()
"@odata.type" := "#microsoft.graph.bookingAppointment"
requestBody.Set"@odata.type"(&"@odata.type") 
end := graphmodels.NewDateTimeTimeZone()
"@odata.type" := "#microsoft.graph.dateTimeTimeZone"
end.Set"@odata.type"(&"@odata.type") 
dateTime := "2018-05-06T12:30:00.0000000+00:00"
end.SetDateTime(&dateTime) 
timeZone := "UTC"
end.SetTimeZone(&timeZone) 
requestBody.SetEnd(end)
invoiceDate := graphmodels.NewDateTimeTimeZone()
"@odata.type" := "#microsoft.graph.dateTimeTimeZone"
invoiceDate.Set"@odata.type"(&"@odata.type") 
dateTime := "2018-05-06T12:30:00.0000000+00:00"
invoiceDate.SetDateTime(&dateTime) 
timeZone := "UTC"
invoiceDate.SetTimeZone(&timeZone) 
requestBody.SetInvoiceDate(invoiceDate)
start := graphmodels.NewDateTimeTimeZone()
"@odata.type" := "#microsoft.graph.dateTimeTimeZone"
start.Set"@odata.type"(&"@odata.type") 
dateTime := "2018-05-06T12:00:00.0000000+00:00"
start.SetDateTime(&dateTime) 
timeZone := "UTC"
start.SetTimeZone(&timeZone) 
requestBody.SetStart(start)

graphClient.BookingBusinessesById("bookingBusiness-id").AppointmentsById("bookingAppointment-id").Patch(requestBody)


```