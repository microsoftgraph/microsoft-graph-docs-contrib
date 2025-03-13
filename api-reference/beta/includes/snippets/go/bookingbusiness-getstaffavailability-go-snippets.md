---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsolutions "github.com/microsoftgraph/msgraph-beta-sdk-go/solutions"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphsolutions.NewGetStaffAvailabilityPostRequestBody()
staffIds := []string {
	"311a5454-08b2-4560-ba1c-f715e938cb79",
}
requestBody.SetStaffIds(staffIds)
startDateTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2022-01-25T00:00:00"
startDateTime.SetDateTime(&dateTime) 
timeZone := "India Standard Time"
startDateTime.SetTimeZone(&timeZone) 
requestBody.SetStartDateTime(startDateTime)
endDateTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2022-01-26T17:00:00"
endDateTime.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
endDateTime.SetTimeZone(&timeZone) 
requestBody.SetEndDateTime(endDateTime)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
getStaffAvailability, err := graphClient.Solutions().BookingBusinesses().ByBookingBusinessId("bookingBusiness-id").GetStaffAvailability().PostAsGetStaffAvailabilityPostResponse(context.Background(), requestBody, nil)


```