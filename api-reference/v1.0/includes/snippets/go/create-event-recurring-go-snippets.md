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


requestBody := graphmodels.NewEvent()
subject := "Let's go for lunch"
requestBody.SetSubject(&subject) 
body := graphmodels.NewItemBody()
contentType := graphmodels.HTML_BODYTYPE 
body.SetContentType(&contentType) 
content := "Does noon time work for you?"
body.SetContent(&content) 
requestBody.SetBody(body)
start := graphmodels.NewDateTimeTimeZone()
dateTime := "2017-09-04T12:00:00"
start.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
start.SetTimeZone(&timeZone) 
requestBody.SetStart(start)
end := graphmodels.NewDateTimeTimeZone()
dateTime := "2017-09-04T14:00:00"
end.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
end.SetTimeZone(&timeZone) 
requestBody.SetEnd(end)
recurrence := graphmodels.NewPatternedRecurrence()
pattern := graphmodels.NewRecurrencePattern()
type := graphmodels.WEEKLY_RECURRENCEPATTERNTYPE 
pattern.SetType(&type) 
interval := int32(1)
pattern.SetInterval(&interval) 
daysOfWeek := []graphmodels.DayOfWeekable {
	dayOfWeek := graphmodels.MONDAY_DAYOFWEEK 
	pattern.SetDayOfWeek(&dayOfWeek) 

}
pattern.SetDaysOfWeek(daysOfWeek)
recurrence.SetPattern(pattern)
range := graphmodels.NewRecurrenceRange()
type := graphmodels.ENDDATE_RECURRENCERANGETYPE 
range.SetType(&type) 
startDate := 2017-09-04
range.SetStartDate(&startDate) 
endDate := 2017-12-31
range.SetEndDate(&endDate) 
recurrence.SetRange(range)
requestBody.SetRecurrence(recurrence)
location := graphmodels.NewLocation()
displayName := "Harry's Bar"
location.SetDisplayName(&displayName) 
requestBody.SetLocation(location)


attendee := graphmodels.NewAttendee()
emailAddress := graphmodels.NewEmailAddress()
address := "AdeleV@contoso.onmicrosoft.com"
emailAddress.SetAddress(&address) 
name := "Adele Vance"
emailAddress.SetName(&name) 
attendee.SetEmailAddress(emailAddress)
type := graphmodels.REQUIRED_ATTENDEETYPE 
attendee.SetType(&type) 

attendees := []graphmodels.Objectable {
	attendee,

}
requestBody.SetAttendees(attendees)
allowNewTimeProposals := true
requestBody.SetAllowNewTimeProposals(&allowNewTimeProposals) 

result, err := graphClient.Me().Events().Post(context.Background(), requestBody, nil)


```