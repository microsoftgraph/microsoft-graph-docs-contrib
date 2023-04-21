---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/BookingBusinesses/Item/Appointments/Item/Cancel"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCancelPostRequestBody()
cancellationMessage := "Your appointment has been successfully cancelled. Please call us again."
requestBody.SetCancellationMessage(&cancellationMessage) 

graphClient.BookingBusinesses().ByBookingBusinesseId("bookingBusiness-id").Appointments().ByAppointmentId("bookingAppointment-id").Cancel().Post(context.Background(), requestBody, nil)


```