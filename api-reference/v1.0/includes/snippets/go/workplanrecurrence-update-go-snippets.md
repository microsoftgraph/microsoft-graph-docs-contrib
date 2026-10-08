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

requestBody := graphmodels.NewWorkPlanRecurrence()
start := graphmodels.NewDateTimeTimeZone()
dateTime := "2025-12-11T09:00:00.0000000"
start.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
start.SetTimeZone(&timeZone) 
requestBody.SetStart(start)
end := graphmodels.NewDateTimeTimeZone()
dateTime := "2025-12-11T18:00:00.0000000"
end.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
end.SetTimeZone(&timeZone) 
requestBody.SetEnd(end)
workLocationType := graphmodels.OFFICE_WORKLOCATIONTYPE 
requestBody.SetWorkLocationType(&workLocationType) 
recurrence := graphmodels.NewPatternedRecurrence()
pattern := graphmodels.NewRecurrencePattern()
type := graphmodels.WEEKLY_RECURRENCEPATTERNTYPE 
pattern.SetType(&type) 
interval := int32(1)
pattern.SetInterval(&interval) 
firstDayOfWeek := graphmodels.SUNDAY_DAYOFWEEK 
pattern.SetFirstDayOfWeek(&firstDayOfWeek) 
daysOfWeek := []graphmodels.DayOfWeekable {
	dayOfWeek := graphmodels.THURSDAY_DAYOFWEEK 
	pattern.SetDayOfWeek(&dayOfWeek)
}
pattern.SetDaysOfWeek(daysOfWeek)
recurrence.SetPattern(pattern)
range := graphmodels.NewRecurrenceRange()
type := graphmodels.NOEND_RECURRENCERANGETYPE 
range.SetType(&type) 
startDate := 2025-12-11
range.SetStartDate(&startDate) 
recurrenceTimeZone := "Pacific Standard Time"
range.SetRecurrenceTimeZone(&recurrenceTimeZone) 
recurrence.SetRange(range)
requestBody.SetRecurrence(recurrence)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
recurrences, err := graphClient.Me().Settings().WorkHoursAndLocations().Recurrences().ByWorkPlanRecurrenceId("workPlanRecurrence-id").Put(context.Background(), requestBody, nil)


```