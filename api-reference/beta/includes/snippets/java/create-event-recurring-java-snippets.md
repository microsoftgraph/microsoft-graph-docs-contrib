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
body.setContent("Does noon time work for you?");
event.setBody(body);
DateTimeTimeZone start = new DateTimeTimeZone();
start.setDateTime("2017-09-04T12:00:00");
start.setTimeZone("Pacific Standard Time");
event.setStart(start);
DateTimeTimeZone end = new DateTimeTimeZone();
end.setDateTime("2017-09-04T14:00:00");
end.setTimeZone("Pacific Standard Time");
event.setEnd(end);
PatternedRecurrence recurrence = new PatternedRecurrence();
RecurrencePattern pattern = new RecurrencePattern();
pattern.setType(RecurrencePatternType.Weekly);
pattern.setInterval(1);
LinkedList<DayOfWeek> daysOfWeek = new LinkedList<DayOfWeek>();
daysOfWeek.add(DayOfWeek.Monday);
pattern.setDaysOfWeek(daysOfWeek);
recurrence.setPattern(pattern);
RecurrenceRange range = new RecurrenceRange();
range.setType(RecurrenceRangeType.EndDate);
LocalDate startDate = LocalDate.parse("2017-09-04");
range.setStartDate(startDate);
LocalDate endDate = LocalDate.parse("2017-12-31");
range.setEndDate(endDate);
recurrence.setRange(range);
event.setRecurrence(recurrence);
Location location = new Location();
location.setDisplayName("Harry's Bar");
event.setLocation(location);
LinkedList<Attendee> attendees = new LinkedList<Attendee>();
Attendee attendee = new Attendee();
EmailAddress emailAddress = new EmailAddress();
emailAddress.setAddress("AdeleV@contoso.com");
emailAddress.setName("Adele Vance");
attendee.setEmailAddress(emailAddress);
attendee.setType(AttendeeType.Required);
attendees.add(attendee);
event.setAttendees(attendees);
Event result = graphClient.me().events().post(event);


```