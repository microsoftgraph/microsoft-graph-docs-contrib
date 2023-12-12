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



customers, err := graphClient.BookingBusinesses().ByBookingBusinessId("bookingBusiness-id").Customers().ByBookingCustomerId("bookingCustomer-id").Get(context.Background(), nil)


```