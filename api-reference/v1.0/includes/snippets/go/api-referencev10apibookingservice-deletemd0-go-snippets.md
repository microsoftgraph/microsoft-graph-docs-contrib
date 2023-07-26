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



graphClient.Solutions().BookingBusinesses().ByBookingBusinesseId("bookingBusiness-id").Services().ByServiceId("bookingService-id").Delete(context.Background(), nil)


```