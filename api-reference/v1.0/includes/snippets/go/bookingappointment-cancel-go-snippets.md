---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsolutions "github.com/microsoftgraph/msgraph-sdk-go/solutions"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphsolutions.NewCancelPostRequestBody()
cancellationMessage := "Your appointment has been successfully cancelled. Please call us again."
requestBody.SetCancellationMessage(&cancellationMessage) 

graphClient.Solutions().BookingBusinesses().ByBookingBusinesseId("bookingBusiness-id").Appointments().ByAppointmentId("bookingAppointment-id").Cancel().Post(context.Background(), requestBody, nil)


```