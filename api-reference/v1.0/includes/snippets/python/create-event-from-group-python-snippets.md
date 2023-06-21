---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Event()
request_body.subject = 'Let\'s go for lunch'

body = ItemBody()
body.contenttype(BodyType.HTML('bodytype.html'))

body.content = 'Does late morning work for you?'


request_body.body = body
start = DateTimeTimeZone()
start.date_time = '2019-06-16T12:00:00'

start.time_zone = 'Pacific Standard Time'


request_body.start = start
end = DateTimeTimeZone()
end.date_time = '2019-06-16T14:00:00'

end.time_zone = 'Pacific Standard Time'


request_body.end = end
location = Location()
location.display_name = 'Harry\'s Bar'


request_body.location = location
attendees_attendee1 = Attendee()
attendees_attendee1email_address = EmailAddress()
attendees_attendee1email_address.address = 'adelev@contoso.onmicrosoft.com'

attendees_attendee1email_address.name = 'Adele Vance'


attendees_attendee1.email_address = attendees_attendee1email_address
attendees_attendee1.type(AttendeeType.Required('attendeetype.required'))


attendeesArray []= attendeesAttendee1;
request_body.attendees(attendeesArray)





result = await client.groups.by_group_id('group-id').events.post(request_body = request_body)


```