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

body.content = 'Does next month work for you?'


request_body.body = body
start = DateTimeTimeZone()
start.date_time = '2019-03-10T12:00:00'

start.time_zone = 'Pacific Standard Time'


request_body.start = start
end = DateTimeTimeZone()
end.date_time = '2019-03-10T14:00:00'

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


request_body.transaction_id = '7E163156-7762-4BEB-A1C6-729EA81755A7'




result = await client.me.calendars.by_calendar_id('calendar-id').events.post(request_body = request_body)


```