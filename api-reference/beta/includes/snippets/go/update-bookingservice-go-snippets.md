---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewBookingService()
defaultDuration , err := abstractions.ParseISODuration("PT30M")
requestBody.SetDefaultDuration(&defaultDuration) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
services, err := graphClient.Solutions().BookingBusinesses().ByBookingBusinessId("bookingBusiness-id").Services().ByBookingServiceId("bookingService-id").Patch(context.Background(), requestBody, nil)


```