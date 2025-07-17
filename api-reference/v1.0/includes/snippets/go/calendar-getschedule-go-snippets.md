---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "outlook.timezone=\"Pacific Standard Time\"")

configuration := &graphusers.CalendarGetScheduleRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphusers.NewItemGetSchedulePostRequestBody()
schedules := []string {
	"adelev@contoso.com",
	"meganb@contoso.com",
}
requestBody.SetSchedules(schedules)
startTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2019-03-15T09:00:00"
startTime.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
startTime.SetTimeZone(&timeZone) 
requestBody.SetStartTime(startTime)
endTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2019-03-15T18:00:00"
endTime.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
endTime.SetTimeZone(&timeZone) 
requestBody.SetEndTime(endTime)
availabilityViewInterval := int32(60)
requestBody.SetAvailabilityViewInterval(&availabilityViewInterval) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
getSchedule, err := graphClient.Me().Calendar().GetSchedule().PostAsGetSchedulePostResponse(context.Background(), requestBody, configuration)


```