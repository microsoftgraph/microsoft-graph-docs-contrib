---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Event()
request_body.subject = 'Family reunion'

body = ItemBody()
body.contenttype(BodyType.HTML('bodytype.html'))

body.content = 'Let\'s get together this Thanksgiving!'


request_body.body = body
start = DateTimeTimeZone()
start.date_time = '2015-11-26T09:00:00'

start.time_zone = 'Pacific Standard Time'


request_body.start = start
end = DateTimeTimeZone()
end.date_time = '2015-11-29T21:00:00'

end.time_zone = 'Pacific Standard Time'


request_body.end = end
attendees_attendee1 = Attendee()
attendees_attendee1email_address = EmailAddress()
attendees_attendee1email_address.address = 'Terrie@contoso.com'

attendees_attendee1email_address.name = 'Terrie Barrera'


attendees_attendee1.email_address = attendees_attendee1email_address
attendees_attendee1.type(AttendeeType.Required('attendeetype.required'))


attendeesArray []= attendeesAttendee1;
attendees_attendee2 = Attendee()
attendees_attendee2email_address = EmailAddress()
attendees_attendee2email_address.address = 'Lauren@contoso.com'

attendees_attendee2email_address.name = 'Lauren Solis'


attendees_attendee2.email_address = attendees_attendee2email_address
attendees_attendee2.type(AttendeeType.Required('attendeetype.required'))


attendeesArray []= attendeesAttendee2;
request_body.attendees(attendeesArray)


multi_value_extended_properties_multi_value_legacy_extended_property1 = MultiValueLegacyExtendedProperty()
multi_value_extended_properties_multi_value_legacy_extended_property1.id = 'StringArray {66f5a359-4659-4830-9070-00050ec6ac6e} Name Recreation'

multi_value_extended_properties_multi_value_legacy_extended_property1.Value(['Food', 'Hiking', 'Swimming', ])


multiValueExtendedPropertiesArray []= multiValueExtendedPropertiesMultiValueLegacyExtendedProperty1;
request_body.multivalueextendedproperties(multiValueExtendedPropertiesArray)





result = await client.me.events.post(request_body = request_body)


```