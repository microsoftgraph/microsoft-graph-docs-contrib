---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Event event = new Event();
event.setSubject("Celebrate Thanksgiving");
ItemBody body = new ItemBody();
body.setContentType(BodyType.Html);
body.setContent("Let's get together!");
event.setBody(body);
DateTimeTimeZone start = new DateTimeTimeZone();
start.setDateTime("2015-11-26T18:00:00");
start.setTimeZone("Pacific Standard Time");
event.setStart(start);
DateTimeTimeZone end = new DateTimeTimeZone();
end.setDateTime("2015-11-26T23:00:00");
end.setTimeZone("Pacific Standard Time");
event.setEnd(end);
LinkedList<Attendee> attendees = new LinkedList<Attendee>();
Attendee attendee = new Attendee();
EmailAddress emailAddress = new EmailAddress();
emailAddress.setAddress("Terrie@contoso.com");
emailAddress.setName("Terrie Barrera");
attendee.setEmailAddress(emailAddress);
attendee.setType(AttendeeType.Required);
attendees.add(attendee);
event.setAttendees(attendees);
LinkedList<SingleValueLegacyExtendedProperty> singleValueExtendedProperties = new LinkedList<SingleValueLegacyExtendedProperty>();
SingleValueLegacyExtendedProperty singleValueLegacyExtendedProperty = new SingleValueLegacyExtendedProperty();
singleValueLegacyExtendedProperty.setId("String {66f5a359-4659-4830-9070-00040ec6ac6e} Name Fun");
singleValueLegacyExtendedProperty.setValue("Food");
singleValueExtendedProperties.add(singleValueLegacyExtendedProperty);
event.setSingleValueExtendedProperties(singleValueExtendedProperties);
Event result = graphClient.me().events().post(event);


```