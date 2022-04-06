---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewEvent()
subject := "Let's go for lunch"
requestBody.SetSubject(&subject)
body := msgraphsdk.NewItemBody()
requestBody.SetBody(body)
contentType := "HTML"
body.SetContentType(&contentType)
content := "Does noon time work for you?"
body.SetContent(&content)
start := msgraphsdk.NewDateTimeTimeZone()
requestBody.SetStart(start)
dateTime := "2017-09-04T12:00:00"
start.SetDateTime(&dateTime)
timeZone := "Pacific Standard Time"
start.SetTimeZone(&timeZone)
end := msgraphsdk.NewDateTimeTimeZone()
requestBody.SetEnd(end)
dateTime := "2017-09-04T14:00:00"
end.SetDateTime(&dateTime)
timeZone := "Pacific Standard Time"
end.SetTimeZone(&timeZone)
recurrence := msgraphsdk.NewPatternedRecurrence()
requestBody.SetRecurrence(recurrence)
pattern := msgraphsdk.NewRecurrencePattern()
recurrence.SetPattern(pattern)
type := "weekly"
pattern.SetType(&type)
interval := int32(1)
pattern.SetInterval(&interval)
pattern.SetDaysOfWeek( []DayOfWeek {
	"Monday",
}
range := msgraphsdk.NewRecurrenceRange()
recurrence.SetRange(range)
type := "endDate"
range.SetType(&type)
startDate := "2017-09-04"
range.SetStartDate(&startDate)
endDate := "2017-12-31"
range.SetEndDate(&endDate)
location := msgraphsdk.NewLocation()
requestBody.SetLocation(location)
displayName := "Harry's Bar"
location.SetDisplayName(&displayName)
requestBody.SetAttendees( []Attendee {
	msgraphsdk.NewAttendee(),
	SetAdditionalData(map[string]interface{}{
		"type": "required",
	}
}
allowNewTimeProposals := true
requestBody.SetAllowNewTimeProposals(&allowNewTimeProposals)
options := &msgraphsdk.EventsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().Events().Post(options)


```