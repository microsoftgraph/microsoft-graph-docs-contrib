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



bookingBusinesses, err := graphClient.Solutions().BookingBusinesses().ByBookingBusinessId("bookingBusiness-id").Get(context.Background(), nil)


```