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



bookingCurrencies, err := graphClient.BookingCurrencies().ByBookingCurrencyId("bookingCurrency-id").Get(context.Background(), nil)


```