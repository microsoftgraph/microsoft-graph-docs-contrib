---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Event event = new Event();
event.setSubject("Plan summer company picnic");
ItemBody body = new ItemBody();
body.setContentType(BodyType.Html);
body.setContent("Let's kick-start this event planning!");
event.setBody(body);
DateTimeTimeZone start = new DateTimeTimeZone();
start.setDateTime("2017-08-30T11:00:00");
start.setTimeZone("Pacific Standard Time");
event.setStart(start);
DateTimeTimeZone end = new DateTimeTimeZone();
end.setDateTime("2017-08-30T12:00:00");
end.setTimeZone("Pacific Standard Time");
event.setEnd(end);
LinkedList<Attendee> attendees = new LinkedList<Attendee>();
Attendee attendee = new Attendee();
EmailAddress emailAddress = new EmailAddress();
emailAddress.setAddress("DanaS@contoso.com");
emailAddress.setName("Dana Swope");
attendee.setEmailAddress(emailAddress);
attendee.setType(AttendeeType.Required);
attendees.add(attendee);
Attendee attendee1 = new Attendee();
EmailAddress emailAddress1 = new EmailAddress();
emailAddress1.setAddress("AlexW@contoso.com");
emailAddress1.setName("Alex Wilber");
attendee1.setEmailAddress(emailAddress1);
attendee1.setType(AttendeeType.Required);
attendees.add(attendee1);
event.setAttendees(attendees);
Location location = new Location();
location.setDisplayName("Conf Room 3; Fourth Coffee; Home Office");
location.setLocationType(LocationType.Default);
event.setLocation(location);
LinkedList<Location> locations = new LinkedList<Location>();
Location location1 = new Location();
location1.setDisplayName("Conf Room 3");
locations.add(location1);
Location location2 = new Location();
location2.setDisplayName("Fourth Coffee");
PhysicalAddress address2 = new PhysicalAddress();
address2.setStreet("4567 Main St");
address2.setCity("Redmond");
address2.setState("WA");
address2.setCountryOrRegion("US");
address2.setPostalCode("32008");
location2.setAddress(address2);
OutlookGeoCoordinates coordinates = new OutlookGeoCoordinates();
coordinates.setLatitude(47.672d);
coordinates.setLongitude(-102.103d);
location2.setCoordinates(coordinates);
locations.add(location2);
Location location3 = new Location();
location3.setDisplayName("Home Office");
locations.add(location3);
event.setLocations(locations);
event.setAllowNewTimeProposals(true);
Event result = graphClient.me().events().post(event, requestConfiguration -> {
	requestConfiguration.headers.add("Prefer", "outlook.timezone=\"Pacific Standard Time\"");
});


```