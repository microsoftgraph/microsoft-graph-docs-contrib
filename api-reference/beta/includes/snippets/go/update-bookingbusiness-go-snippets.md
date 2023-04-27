---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewBookingBusiness()
email := "admin@fabrikam.com"
requestBody.SetEmail(&email) 
schedulingPolicy := graphmodels.NewBookingSchedulingPolicy()
timeSlotInterval , err := abstractions.ParseISODuration("PT60M")
schedulingPolicy.SetTimeSlotInterval(&timeSlotInterval) 
minimumLeadTime , err := abstractions.ParseISODuration("P1D")
schedulingPolicy.SetMinimumLeadTime(&minimumLeadTime) 
maximumAdvance , err := abstractions.ParseISODuration("P30D")
schedulingPolicy.SetMaximumAdvance(&maximumAdvance) 
sendConfirmationsToOwner := true
schedulingPolicy.SetSendConfirmationsToOwner(&sendConfirmationsToOwner) 
allowStaffSelection := true
schedulingPolicy.SetAllowStaffSelection(&allowStaffSelection) 
requestBody.SetSchedulingPolicy(schedulingPolicy)

result, err := graphClient.BookingBusinesses().ByBookingBusinesseId("bookingBusiness-id").Patch(context.Background(), requestBody, nil)


```