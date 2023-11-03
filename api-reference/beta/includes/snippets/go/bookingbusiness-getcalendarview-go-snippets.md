---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphbookingbusinesses "github.com/microsoftgraph/msgraph-beta-sdk-go/bookingbusinesses"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestStart := "2018-04-30T00:00:00Z"
requestEnd := "2018-05-10T00:00:00Z"

requestParameters := &graphbookingbusinesses.BookingBusinesseItemCalendarViewRequestBuilderGetQueryParameters{
	Start: &requestStart,
	End: &requestEnd,
}
configuration := &graphbookingbusinesses.BookingBusinesseItemCalendarViewRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

calendarView, err := graphClient.BookingBusinesses().ByBookingBusinessId("bookingBusiness-id").CalendarView().Get(context.Background(), configuration)


```