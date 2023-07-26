---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Event()
request_body.subject = 'Celebrate Thanksgiving'

body = ItemBody()
body.contenttype(BodyType.HTML('bodytype.html'))

body.content = 'Let\'s get together!'


request_body.body = body
start = DateTimeTimeZone()
start.date_time = '2015-11-26T18:00:00'

start.time_zone = 'Pacific Standard Time'


request_body.start = start
end = DateTimeTimeZone()
end.date_time = '2015-11-26T23:00:00'

end.time_zone = 'Pacific Standard Time'


request_body.end = end
attendees_attendee1 = Attendee()
attendees_attendee1email_address = EmailAddress()
attendees_attendee1email_address.address = 'Terrie@contoso.com'

attendees_attendee1email_address.name = 'Terrie Barrera'


attendees_attendee1.email_address = attendees_attendee1email_address
attendees_attendee1.type(AttendeeType.Required('attendeetype.required'))


attendeesArray []= attendeesAttendee1;
request_body.attendees(attendeesArray)


single_value_extended_properties_single_value_legacy_extended_property1 = SingleValueLegacyExtendedProperty()
single_value_extended_properties_single_value_legacy_extended_property1.id = 'String {66f5a359-4659-4830-9070-00040ec6ac6e} Name Fun'

single_value_extended_properties_single_value_legacy_extended_property1.value = 'Food'


singleValueExtendedPropertiesArray []= singleValueExtendedPropertiesSingleValueLegacyExtendedProperty1;
request_body.singlevalueextendedproperties(singleValueExtendedPropertiesArray)





result = await client.me.events.post(request_body = request_body)


```