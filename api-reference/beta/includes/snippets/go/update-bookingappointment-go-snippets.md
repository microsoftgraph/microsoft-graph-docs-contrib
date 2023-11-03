---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewBookingAppointment()
end := graphmodels.NewDateTimeTimeZone()
dateTime := "2018-05-06T12:30:00.0000000+00:00"
end.SetDateTime(&dateTime) 
timeZone := "UTC"
end.SetTimeZone(&timeZone) 
requestBody.SetEnd(end)
invoiceDate := graphmodels.NewDateTimeTimeZone()
dateTime := "2018-05-06T12:30:00.0000000+00:00"
invoiceDate.SetDateTime(&dateTime) 
timeZone := "UTC"
invoiceDate.SetTimeZone(&timeZone) 
requestBody.SetInvoiceDate(invoiceDate)
start := graphmodels.NewDateTimeTimeZone()
dateTime := "2018-05-06T12:00:00.0000000+00:00"
start.SetDateTime(&dateTime) 
timeZone := "UTC"
start.SetTimeZone(&timeZone) 
requestBody.SetStart(start)

appointments, err := graphClient.BookingBusinesses().ByBookingBusinessId("bookingBusiness-id").Appointments().ByBookingAppointmentId("bookingAppointment-id").Patch(context.Background(), requestBody, nil)


```