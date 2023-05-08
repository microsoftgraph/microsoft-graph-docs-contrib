---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/bookingbusinesses"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestStart := "2018-04-30T00:00:00Z"
requestEnd := "2018-05-10T00:00:00Z"

requestParameters := &graphconfig.BookingBusinesseItemCalendarViewRequestBuilderGetQueryParameters{
	Start: &requestStart,
	End: &requestEnd,
}
configuration := &graphconfig.BookingBusinesseItemCalendarViewRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.BookingBusinesses().ByBookingBusinesseId("bookingBusiness-id").CalendarView().Get(context.Background(), configuration)


```