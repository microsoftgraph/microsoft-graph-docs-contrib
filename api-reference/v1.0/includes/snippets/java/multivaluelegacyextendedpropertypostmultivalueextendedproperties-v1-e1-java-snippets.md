---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Event event = new Event();
event.setSubject("Family reunion");
ItemBody body = new ItemBody();
body.setContentType(BodyType.Html);
body.setContent("Let's get together this Thanksgiving!");
event.setBody(body);
DateTimeTimeZone start = new DateTimeTimeZone();
start.setDateTime("2015-11-26T09:00:00");
start.setTimeZone("Pacific Standard Time");
event.setStart(start);
DateTimeTimeZone end = new DateTimeTimeZone();
end.setDateTime("2015-11-29T21:00:00");
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
Attendee attendee1 = new Attendee();
EmailAddress emailAddress1 = new EmailAddress();
emailAddress1.setAddress("Lauren@contoso.com");
emailAddress1.setName("Lauren Solis");
attendee1.setEmailAddress(emailAddress1);
attendee1.setType(AttendeeType.Required);
attendees.add(attendee1);
event.setAttendees(attendees);
LinkedList<MultiValueLegacyExtendedProperty> multiValueExtendedProperties = new LinkedList<MultiValueLegacyExtendedProperty>();
MultiValueLegacyExtendedProperty multiValueLegacyExtendedProperty = new MultiValueLegacyExtendedProperty();
multiValueLegacyExtendedProperty.setId("StringArray {66f5a359-4659-4830-9070-00050ec6ac6e} Name Recreation");
LinkedList<String> value = new LinkedList<String>();
value.add("Food");
value.add("Hiking");
value.add("Swimming");
multiValueLegacyExtendedProperty.setValue(value);
multiValueExtendedProperties.add(multiValueLegacyExtendedProperty);
event.setMultiValueExtendedProperties(multiValueExtendedProperties);
Event result = graphClient.me().events().post(event);


```