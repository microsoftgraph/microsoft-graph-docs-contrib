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

requestBody := graphmodels.NewWorkPlanOccurrence()
start := graphmodels.NewDateTimeTimeZone()
dateTime := "2025-12-15T08:00:00.0000000"
start.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
start.SetTimeZone(&timeZone) 
requestBody.SetStart(start)
end := graphmodels.NewDateTimeTimeZone()
dateTime := "2025-12-15T12:00:00.0000000"
end.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
end.SetTimeZone(&timeZone) 
requestBody.SetEnd(end)
workLocationType := graphmodels.TIMEOFF_WORKLOCATIONTYPE 
requestBody.SetWorkLocationType(&workLocationType) 
timeOffDetails := graphmodels.NewTimeOffDetails()
subject := "Doctor Appointment"
timeOffDetails.SetSubject(&subject) 
isAllDay := false
timeOffDetails.SetIsAllDay(&isAllDay) 
requestBody.SetTimeOffDetails(timeOffDetails)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
occurrences, err := graphClient.Me().Settings().WorkHoursAndLocations().Occurrences().ByWorkPlanOccurrenceId("workPlanOccurrence-id").Put(context.Background(), requestBody, nil)


```