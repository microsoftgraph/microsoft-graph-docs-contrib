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



bookingCurrencies, err := graphClient.Solutions().BookingCurrencies().ByBookingCurrencyId("bookingCurrency-id").Get(context.Background(), nil)


```