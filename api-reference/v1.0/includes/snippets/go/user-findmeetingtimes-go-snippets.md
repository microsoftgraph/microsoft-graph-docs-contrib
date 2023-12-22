---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "outlook.timezone=\"Pacific Standard Time\"")

configuration := &graphusers.ItemFindMeetingTimesRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphusers.NewItemFindMeetingTimesPostRequestBody()


attendeeBase := graphmodels.NewAttendeeBase()
type := graphmodels.REQUIRED_ATTENDEETYPE 
attendeeBase.SetType(&type) 
emailAddress := graphmodels.NewEmailAddress()
name := "Alex Wilbur"
emailAddress.SetName(&name) 
address := "alexw@contoso.onmicrosoft.com"
emailAddress.SetAddress(&address) 
attendeeBase.SetEmailAddress(emailAddress)

attendees := []graphmodels.attendeeBaseable {
	attendeeBase,
}
requestBody.SetAttendees(attendees)
locationConstraint := graphmodels.NewLocationConstraint()
isRequired := false
locationConstraint.SetIsRequired(&isRequired) 
suggestLocation := false
locationConstraint.SetSuggestLocation(&suggestLocation) 


locationConstraintItem := graphmodels.NewLocationConstraintItem()
resolveAvailability := false
locationConstraintItem.SetResolveAvailability(&resolveAvailability) 
displayName := "Conf room Hood"
locationConstraintItem.SetDisplayName(&displayName) 

locations := []graphmodels.locationConstraintItemable {
	locationConstraintItem,
}
locationConstraint.SetLocations(locations)
requestBody.SetLocationConstraint(locationConstraint)
timeConstraint := graphmodels.NewTimeConstraint()
activityDomain := graphmodels.WORK_ACTIVITYDOMAIN 
timeConstraint.SetActivityDomain(&activityDomain) 


timeSlot := graphmodels.NewTimeSlot()
start := graphmodels.NewDateTimeTimeZone()
dateTime := "2019-04-16T09:00:00"
start.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
start.SetTimeZone(&timeZone) 
timeSlot.SetStart(start)
end := graphmodels.NewDateTimeTimeZone()
dateTime := "2019-04-18T17:00:00"
end.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
end.SetTimeZone(&timeZone) 
timeSlot.SetEnd(end)

timeSlots := []graphmodels.TimeSlotable {
	timeSlot,
}
timeConstraint.SetTimeSlots(timeSlots)
requestBody.SetTimeConstraint(timeConstraint)
isOrganizerOptional := false
requestBody.SetIsOrganizerOptional(&isOrganizerOptional) 
meetingDuration , err := abstractions.ParseISODuration("PT1H")
requestBody.SetMeetingDuration(&meetingDuration) 
returnSuggestionReasons := true
requestBody.SetReturnSuggestionReasons(&returnSuggestionReasons) 
minimumAttendeePercentage := float64(100)
requestBody.SetMinimumAttendeePercentage(&minimumAttendeePercentage) 

findMeetingTimes, err := graphClient.Me().FindMeetingTimes().Post(context.Background(), requestBody, configuration)


```