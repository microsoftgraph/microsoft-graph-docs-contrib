---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
bookingBusinesses, err := graphClient.Solutions().BookingBusinesses().ByBookingBusinessId("bookingBusiness-id").Patch(context.Background(), requestBody, nil)


```