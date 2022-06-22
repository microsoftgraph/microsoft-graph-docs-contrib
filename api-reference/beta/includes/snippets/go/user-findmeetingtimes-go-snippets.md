---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAttendees( []AttendeeBase {
	msgraphsdk.NewAttendeeBase(),
	SetAdditionalData(map[string]interface{}{
		"type": "required",
	}
}
locationConstraint := msgraphsdk.NewLocationConstraint()
requestBody.SetLocationConstraint(locationConstraint)
isRequired := "false"
locationConstraint.SetIsRequired(&isRequired)
suggestLocation := "false"
locationConstraint.SetSuggestLocation(&suggestLocation)
locationConstraint.SetLocations( []LocationConstraintItem {
	msgraphsdk.NewLocationConstraintItem(),
	SetAdditionalData(map[string]interface{}{
		"resolveAvailability": "false",
		"displayName": "Conf room Hood",
	}
}
timeConstraint := msgraphsdk.NewTimeConstraint()
requestBody.SetTimeConstraint(timeConstraint)
activityDomain := "work"
timeConstraint.SetActivityDomain(&activityDomain)
timeConstraint.SetTimeSlots( []TimeSlot {
	msgraphsdk.NewTimeSlot(),
start := msgraphsdk.NewDateTimeTimeZone()
	SetStart(start)
dateTime := "2019-04-16T09:00:00"
	start.SetDateTime(&dateTime)
timeZone := "Pacific Standard Time"
	start.SetTimeZone(&timeZone)
end := msgraphsdk.NewDateTimeTimeZone()
	SetEnd(end)
dateTime := "2019-04-18T17:00:00"
	end.SetDateTime(&dateTime)
timeZone := "Pacific Standard Time"
	end.SetTimeZone(&timeZone)
}
isOrganizerOptional := "false"
requestBody.SetIsOrganizerOptional(&isOrganizerOptional)
meetingDuration := "PT1H"
requestBody.SetMeetingDuration(&meetingDuration)
returnSuggestionReasons := "true"
requestBody.SetReturnSuggestionReasons(&returnSuggestionReasons)
minimumAttendeePercentage := "100"
requestBody.SetMinimumAttendeePercentage(&minimumAttendeePercentage)
headers := map[string]string{
	"Prefer": "outlook.timezone="Pacific Standard Time""
}
options := &msgraphsdk.FindMeetingTimesRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
result, err := graphClient.Me().FindMeetingTimes().PostWithRequestConfigurationAndResponseHandler(requestBody, options, nil)


```