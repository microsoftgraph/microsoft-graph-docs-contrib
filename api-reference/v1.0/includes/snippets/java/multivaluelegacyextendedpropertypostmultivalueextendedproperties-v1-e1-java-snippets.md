---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Event event = new Event();
event.subject = "Family reunion";
ItemBody body = new ItemBody();
body.contentType = BodyType.HTML;
body.content = "Let's get together this Thanksgiving!";
event.body = body;
DateTimeTimeZone start = new DateTimeTimeZone();
start.dateTime = "2015-11-26T09:00:00";
start.timeZone = "Pacific Standard Time";
event.start = start;
DateTimeTimeZone end = new DateTimeTimeZone();
end.dateTime = "2015-11-29T21:00:00";
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
Attendee attendees1 = new Attendee();
EmailAddress emailAddress1 = new EmailAddress();
emailAddress1.address = "Lauren@contoso.com";
emailAddress1.name = "Lauren Solis";
attendees1.emailAddress = emailAddress1;
attendees1.type = AttendeeType.REQUIRED;
attendeesList.add(attendees1);
event.attendees = attendeesList;
LinkedList<MultiValueLegacyExtendedProperty> multiValueExtendedPropertiesList = new LinkedList<MultiValueLegacyExtendedProperty>();
MultiValueLegacyExtendedProperty multiValueExtendedProperties = new MultiValueLegacyExtendedProperty();
multiValueExtendedProperties.id = "StringArray {66f5a359-4659-4830-9070-00050ec6ac6e} Name Recreation";
LinkedList<String> valueList = new LinkedList<String>();
valueList.add("Food");
valueList.add("Hiking");
valueList.add("Swimming");
multiValueExtendedProperties.value = valueList;
multiValueExtendedPropertiesList.add(multiValueExtendedProperties);
MultiValueLegacyExtendedPropertyCollectionResponse multiValueLegacyExtendedPropertyCollectionResponse = new MultiValueLegacyExtendedPropertyCollectionResponse();
multiValueLegacyExtendedPropertyCollectionResponse.value = multiValueExtendedPropertiesList;
MultiValueLegacyExtendedPropertyCollectionPage multiValueLegacyExtendedPropertyCollectionPage = new MultiValueLegacyExtendedPropertyCollectionPage(multiValueLegacyExtendedPropertyCollectionResponse, null);
event.multiValueExtendedProperties = multiValueLegacyExtendedPropertyCollectionPage;

graphClient.me().events()
	.buildRequest()
	.post(event);

```