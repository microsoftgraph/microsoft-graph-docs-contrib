---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphbookingbusinesses "github.com/microsoftgraph/msgraph-beta-sdk-go/bookingbusinesses"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphbookingbusinesses.NewCancelPostRequestBody()
cancellationMessage := "Your appointment has been successfully cancelled. Please call us again."
requestBody.SetCancellationMessage(&cancellationMessage) 

graphClient.BookingBusinesses().ByBookingBusinesseId("bookingBusiness-id").Appointments().ByAppointmentId("bookingAppointment-id").Cancel().Post(context.Background(), requestBody, nil)


```