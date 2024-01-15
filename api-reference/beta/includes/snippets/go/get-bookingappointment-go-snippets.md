---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



appointments, err := graphClient.BookingBusinesses().ByBookingBusinessId("bookingBusiness-id").Appointments().ByBookingAppointmentId("bookingAppointment-id").Get(context.Background(), nil)


```