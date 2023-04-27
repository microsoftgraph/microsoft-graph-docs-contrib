---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewShiftPreferences()
id := "SHPR_eeab4fb1-20e5-48ca-ad9b-98119d94bee7"
requestBody.SetId(&id) 


shiftAvailability := graphmodels.NewShiftAvailability()
recurrence := graphmodels.NewPatternedRecurrence()
pattern := graphmodels.NewRecurrencePattern()
type := graphmodels.WEEKLY_RECURRENCEPATTERNTYPE 
pattern.SetType(&type) 
daysOfWeek := []graphmodels.DayOfWeekable {
	dayOfWeek := graphmodels.MONDAY_DAYOFWEEK 
	pattern.SetDayOfWeek(&dayOfWeek) 
	dayOfWeek := graphmodels.WEDNESDAY_DAYOFWEEK 
	pattern.SetDayOfWeek(&dayOfWeek) 
	dayOfWeek := graphmodels.FRIDAY_DAYOFWEEK 
	pattern.SetDayOfWeek(&dayOfWeek) 

}
pattern.SetDaysOfWeek(daysOfWeek)
interval := int32(1)
pattern.SetInterval(&interval) 
recurrence.SetPattern(pattern)
range := graphmodels.NewRecurrenceRange()
type := graphmodels.NOEND_RECURRENCERANGETYPE 
range.SetType(&type) 
recurrence.SetRange(range)
shiftAvailability.SetRecurrence(recurrence)
timeZone := "Pacific Standard Time"
shiftAvailability.SetTimeZone(&timeZone) 
timeSlots := null
shiftAvailability.SetTimeSlots(&timeSlots) 

availability := []graphmodels.ShiftAvailabilityable {
	shiftAvailability,

}
requestBody.SetAvailability(availability)
additionalData := map[string]interface{}{
	"odataEtag" : "1a371e53-f0a6-4327-a1ee-e3c56e4b38aa", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Users().ByUserId("user-id").Settings().ShiftPreferences().Patch(context.Background(), requestBody, nil)


```