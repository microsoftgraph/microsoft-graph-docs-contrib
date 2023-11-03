---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



customers, err := graphClient.Solutions().BookingBusinesses().ByBookingBusinessId("bookingBusiness-id").Customers().Get(context.Background(), nil)


```