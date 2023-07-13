---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Event event = new Event();
event.subject = "Celebrate Thanksgiving";
ItemBody body = new ItemBody();
body.contentType = BodyType.HTML;
body.content = "Let's get together!";
event.body = body;
DateTimeTimeZone start = new DateTimeTimeZone();
start.dateTime = "2015-11-26T18:00:00";
start.timeZone = "Pacific Standard Time";
event.start = start;
DateTimeTimeZone end = new DateTimeTimeZone();
end.dateTime = "2015-11-26T23:00:00";
end.timeZone = "Pacific Standard Time";
event.end = end;
LinkedList<Attendee> attendeesList = new LinkedList<Attendee>();
Attendee attendees = new Attendee();
EmailAddress emailAddress = new EmailAddress();
emailAddress.address = "Terrie@contoso.com";
emailAddress.name = "Terrie Barrera";
attendees.emailAddress = emailAddress;
attendees.type = AttendeeType.REQUIRED;
attendeesList.add(attendees);
event.attendees = attendeesList;
LinkedList<SingleValueLegacyExtendedProperty> singleValueExtendedPropertiesList = new LinkedList<SingleValueLegacyExtendedProperty>();
SingleValueLegacyExtendedProperty singleValueExtendedProperties = new SingleValueLegacyExtendedProperty();
singleValueExtendedProperties.id = "String {66f5a359-4659-4830-9070-00040ec6ac6e} Name Fun";
singleValueExtendedProperties.value = "Food";
singleValueExtendedPropertiesList.add(singleValueExtendedProperties);
SingleValueLegacyExtendedPropertyCollectionResponse singleValueLegacyExtendedPropertyCollectionResponse = new SingleValueLegacyExtendedPropertyCollectionResponse();
singleValueLegacyExtendedPropertyCollectionResponse.value = singleValueExtendedPropertiesList;
SingleValueLegacyExtendedPropertyCollectionPage singleValueLegacyExtendedPropertyCollectionPage = new SingleValueLegacyExtendedPropertyCollectionPage(singleValueLegacyExtendedPropertyCollectionResponse, null);
event.singleValueExtendedProperties = singleValueLegacyExtendedPropertyCollectionPage;

graphClient.me().events()
	.buildRequest()
	.post(event);

```