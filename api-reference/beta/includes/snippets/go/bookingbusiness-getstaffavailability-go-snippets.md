---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphbookingbusinesses "github.com/microsoftgraph/msgraph-beta-sdk-go/bookingbusinesses"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphbookingbusinesses.NewGetStaffAvailabilityPostRequestBody()
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

result, err := graphClient.BookingBusinesses().ByBookingBusinesseId("bookingBusiness-id").GetStaffAvailability().Post(context.Background(), requestBody, nil)


```