---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.findmeetingtimes.FindMeetingTimesPostRequestBody findMeetingTimesPostRequestBody = new com.microsoft.graph.users.item.findmeetingtimes.FindMeetingTimesPostRequestBody();
LinkedList<AttendeeBase> attendees = new LinkedList<AttendeeBase>();
AttendeeBase attendeeBase = new AttendeeBase();
attendeeBase.setType(AttendeeType.Required);
EmailAddress emailAddress = new EmailAddress();
emailAddress.setName("Alex Wilbur");
emailAddress.setAddress("alexw@contoso.com");
attendeeBase.setEmailAddress(emailAddress);
attendees.add(attendeeBase);
findMeetingTimesPostRequestBody.setAttendees(attendees);
LocationConstraint locationConstraint = new LocationConstraint();
locationConstraint.setIsRequired(false);
locationConstraint.setSuggestLocation(false);
LinkedList<LocationConstraintItem> locations = new LinkedList<LocationConstraintItem>();
LocationConstraintItem locationConstraintItem = new LocationConstraintItem();
locationConstraintItem.setResolveAvailability(false);
locationConstraintItem.setDisplayName("Conf room Hood");
locations.add(locationConstraintItem);
locationConstraint.setLocations(locations);
findMeetingTimesPostRequestBody.setLocationConstraint(locationConstraint);
TimeConstraint timeConstraint = new TimeConstraint();
timeConstraint.setActivityDomain(ActivityDomain.Work);
LinkedList<TimeSlot> timeSlots = new LinkedList<TimeSlot>();
TimeSlot timeSlot = new TimeSlot();
DateTimeTimeZone start = new DateTimeTimeZone();
start.setDateTime("2019-04-16T09:00:00");
start.setTimeZone("Pacific Standard Time");
timeSlot.setStart(start);
DateTimeTimeZone end = new DateTimeTimeZone();
end.setDateTime("2019-04-18T17:00:00");
end.setTimeZone("Pacific Standard Time");
timeSlot.setEnd(end);
timeSlots.add(timeSlot);
timeConstraint.setTimeSlots(timeSlots);
findMeetingTimesPostRequestBody.setTimeConstraint(timeConstraint);
findMeetingTimesPostRequestBody.setIsOrganizerOptional(false);
PeriodAndDuration meetingDuration = PeriodAndDuration.ofDuration(Duration.parse("PT1H"));
findMeetingTimesPostRequestBody.setMeetingDuration(meetingDuration);
findMeetingTimesPostRequestBody.setReturnSuggestionReasons(true);
findMeetingTimesPostRequestBody.setMinimumAttendeePercentage(100d);
var result = graphClient.me().findMeetingTimes().post(findMeetingTimesPostRequestBody, requestConfiguration -> {
	requestConfiguration.headers.add("Prefer", "outlook.timezone=\"Pacific Standard Time\"");
});


```