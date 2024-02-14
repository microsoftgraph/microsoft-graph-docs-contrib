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
body.setContent("Does next month work for you?");
event.setBody(body);
DateTimeTimeZone start = new DateTimeTimeZone();
start.setDateTime("2019-03-10T12:00:00");
start.setTimeZone("Pacific Standard Time");
event.setStart(start);
DateTimeTimeZone end = new DateTimeTimeZone();
end.setDateTime("2019-03-10T14:00:00");
end.setTimeZone("Pacific Standard Time");
event.setEnd(end);
Location location = new Location();
location.setDisplayName("Harry's Bar");
event.setLocation(location);
LinkedList<Attendee> attendees = new LinkedList<Attendee>();
Attendee attendee = new Attendee();
EmailAddress emailAddress = new EmailAddress();
emailAddress.setAddress("adelev@contoso.com");
emailAddress.setName("Adele Vance");
attendee.setEmailAddress(emailAddress);
attendee.setType(AttendeeType.Required);
attendees.add(attendee);
event.setAttendees(attendees);
event.setTransactionId("7E163156-7762-4BEB-A1C6-729EA81755A7");
Event result = graphClient.me().calendars().byCalendarId("{calendar-id}").events().post(event);


```