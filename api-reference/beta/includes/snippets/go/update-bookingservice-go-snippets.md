---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewBookingService()
defaultDuration , err := abstractions.ParseISODuration("PT30M")
requestBody.SetDefaultDuration(&defaultDuration) 

result, err := graphClient.BookingBusinesses().ByBookingBusinesseId("bookingBusiness-id").Services().ByServiceId("bookingService-id").Patch(context.Background(), requestBody, nil)


```