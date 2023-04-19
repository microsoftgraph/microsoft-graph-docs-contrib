---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewBookingAppointment()
endDateTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2018-05-06T12:30:00.0000000+00:00"
endDateTime.SetDateTime(&dateTime) 
timeZone := "UTC"
endDateTime.SetTimeZone(&timeZone) 
requestBody.SetEndDateTime(endDateTime)
startDateTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2018-05-06T12:00:00.0000000+00:00"
startDateTime.SetDateTime(&dateTime) 
timeZone := "UTC"
startDateTime.SetTimeZone(&timeZone) 
requestBody.SetStartDateTime(startDateTime)

result, err := graphClient.Solutions().BookingBusinesses().ByBookingBusinesseId("bookingBusiness-id").Appointments().ByAppointmentId("bookingAppointment-id").Patch(context.Background(), requestBody, nil)


```