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
start.setDateTime("2020-02-25T12:00:00");
start.setTimeZone("Pacific Standard Time");
event.setStart(start);
DateTimeTimeZone end = new DateTimeTimeZone();
end.setDateTime("2020-02-25T14:00:00");
end.setTimeZone("Pacific Standard Time");
event.setEnd(end);
Location location = new Location();
location.setDisplayName("Harry's Bar");
event.setLocation(location);
LinkedList<Attendee> attendees = new LinkedList<Attendee>();
Attendee attendee = new Attendee();
EmailAddress emailAddress = new EmailAddress();
emailAddress.setAddress("AlexW@contoso.com");
emailAddress.setName("Alex Wilbur");
attendee.setEmailAddress(emailAddress);
attendee.setType(AttendeeType.Required);
attendees.add(attendee);
event.setAttendees(attendees);
PatternedRecurrence recurrence = new PatternedRecurrence();
RecurrencePattern pattern = new RecurrencePattern();
pattern.setType(RecurrencePatternType.Daily);
pattern.setInterval(1);
recurrence.setPattern(pattern);
RecurrenceRange range = new RecurrenceRange();
range.setType(RecurrenceRangeType.Numbered);
LocalDate startDate = LocalDate.parse("2020-02-25");
range.setStartDate(startDate);
range.setNumberOfOccurrences(2);
recurrence.setRange(range);
event.setRecurrence(recurrence);
Event result = graphClient.me().events().post(event, requestConfiguration -> {
	requestConfiguration.headers.add("Prefer", "outlook.timezone=\"Pacific Standard Time\"");
});


```