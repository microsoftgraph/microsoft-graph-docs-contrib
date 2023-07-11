---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewBookingCustomerBase()
displayName := "Adele"
requestBody.SetDisplayName(&displayName) 
emailAddress := "adele@relecloud.com"
requestBody.SetEmailAddress(&emailAddress) 

result, err := graphClient.Solutions().BookingBusinesses().ByBookingBusinesseId("bookingBusiness-id").Customers().ByCustomerId("bookingCustomerBase-id").Patch(context.Background(), requestBody, nil)


```