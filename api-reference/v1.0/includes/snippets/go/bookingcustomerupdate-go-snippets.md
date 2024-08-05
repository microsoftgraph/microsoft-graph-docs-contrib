---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewBookingCustomerBase()
displayName := "Adele"
requestBody.SetDisplayName(&displayName) 
emailAddress := "adele@relecloud.com"
requestBody.SetEmailAddress(&emailAddress) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
customers, err := graphClient.Solutions().BookingBusinesses().ByBookingBusinessId("bookingBusiness-id").Customers().ByBookingCustomerBaseId("bookingCustomerBase-id").Patch(context.Background(), requestBody, nil)


```