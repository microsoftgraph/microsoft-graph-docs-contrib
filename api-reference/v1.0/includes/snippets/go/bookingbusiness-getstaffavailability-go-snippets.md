---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Solutions/BookingBusinesses/Item/GetStaffAvailability"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewGetStaffAvailabilityPostRequestBody()
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

result, err := graphClient.Solutions().BookingBusinesses().ByBookingBusinesseId("bookingBusiness-id").GetStaffAvailability().Post(context.Background(), requestBody, nil)


```