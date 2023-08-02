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

body.content = 'Does noon work for you?'


request_body.body = body
start = DateTimeTimeZone()
start.date_time = '2017-04-15T12:00:00'

start.time_zone = 'Pacific Standard Time'


request_body.start = start
end = DateTimeTimeZone()
end.date_time = '2017-04-15T14:00:00'

end.time_zone = 'Pacific Standard Time'


request_body.end = end
location = Location()
location.display_name = 'Harry\'s Bar'


request_body.location = location
attendees_attendee1 = Attendee()
attendees_attendee1email_address = EmailAddress()
attendees_attendee1email_address.address = 'samanthab@contoso.onmicrosoft.com'

attendees_attendee1email_address.name = 'Samantha Booth'


attendees_attendee1.email_address = attendees_attendee1email_address
attendees_attendee1.type(AttendeeType.Required('attendeetype.required'))


attendeesArray []= attendeesAttendee1;
request_body.attendees(attendeesArray)


request_body.allow_new_time_proposals = True

request_body.is_online_meeting = True

request_body.onlinemeetingprovider(OnlineMeetingProviderType.TeamsForBusiness('onlinemeetingprovidertype.teamsforbusiness'))



request_configuration = EventsRequestBuilder.EventsRequestBuilderPostRequestConfiguration(
headers = {
	'Prefer' : "outlook.timezone=\"Pacific Standard Time\"",
}

)


result = await client.me.events.post(request_body = request_body, request_configuration = request_configuration)


```