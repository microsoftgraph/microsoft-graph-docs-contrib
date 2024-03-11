---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Event event = new Event();
event.setSubject("Let's go for lunch");
ItemBody body = new ItemBody();
body.setContentType(BodyType.Html);
body.setContent("Does noon work for you?");
event.setBody(body);
DateTimeTimeZone start = new DateTimeTimeZone();
start.setDateTime("2017-04-15T12:00:00");
start.setTimeZone("Pacific Standard Time");
event.setStart(start);
DateTimeTimeZone end = new DateTimeTimeZone();
end.setDateTime("2017-04-15T14:00:00");
end.setTimeZone("Pacific Standard Time");
event.setEnd(end);
Location location = new Location();
location.setDisplayName("Harry's Bar");
event.setLocation(location);
LinkedList<Attendee> attendees = new LinkedList<Attendee>();
Attendee attendee = new Attendee();
EmailAddress emailAddress = new EmailAddress();
emailAddress.setAddress("samanthab@contoso.com");
emailAddress.setName("Samantha Booth");
attendee.setEmailAddress(emailAddress);
attendee.setType(AttendeeType.Required);
attendees.add(attendee);
event.setAttendees(attendees);
event.setAllowNewTimeProposals(true);
event.setIsOnlineMeeting(true);
event.setOnlineMeetingProvider(OnlineMeetingProviderType.TeamsForBusiness);
Event result = graphClient.me().events().post(event, requestConfiguration -> {
	requestConfiguration.headers.add("Prefer", "outlook.timezone=\"Pacific Standard Time\"");
});


```