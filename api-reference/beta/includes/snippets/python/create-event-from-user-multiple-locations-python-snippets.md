---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Event()
request_body.subject = 'Plan summer company picnic'

body = ItemBody()
body.contenttype(BodyType.HTML('bodytype.html'))

body.content = 'Let\'s kick-start this event planning!'


request_body.body = body
start = DateTimeTimeZone()
start.date_time = '2017-08-30T11:00:00'

start.time_zone = 'Pacific Standard Time'


request_body.start = start
end = DateTimeTimeZone()
end.date_time = '2017-08-30T12:00:00'

end.time_zone = 'Pacific Standard Time'


request_body.end = end
attendees_attendee1 = Attendee()
attendees_attendee1email_address = EmailAddress()
attendees_attendee1email_address.address = 'DanaS@contoso.onmicrosoft.com'

attendees_attendee1email_address.name = 'Dana Swope'


attendees_attendee1.email_address = attendees_attendee1email_address
attendees_attendee1.type(AttendeeType.Required('attendeetype.required'))


attendeesArray []= attendeesAttendee1;
attendees_attendee2 = Attendee()
attendees_attendee2email_address = EmailAddress()
attendees_attendee2email_address.address = 'AlexW@contoso.onmicrosoft.com'

attendees_attendee2email_address.name = 'Alex Wilber'


attendees_attendee2.email_address = attendees_attendee2email_address
attendees_attendee2.type(AttendeeType.Required('attendeetype.required'))


attendeesArray []= attendeesAttendee2;
request_body.attendees(attendeesArray)


location = Location()
location.display_name = 'Conf Room 3; Fourth Coffee; Home Office'

location.locationtype(LocationType.Default('locationtype.default'))


request_body.location = location
locations_location1 = Location()
locations_location1.display_name = 'Conf Room 3'


locationsArray []= locationsLocation1;
locations_location2 = Location()
locations_location2.display_name = 'Fourth Coffee'

locations_location2address = PhysicalAddress()
locations_location2address.street = '4567 Main St'

locations_location2address.city = 'Redmond'

locations_location2address.state = 'WA'

locations_location2address.country_or_region = 'US'

locations_location2address.postal_code = '32008'


locations_location2.address = locations_location2address
locations_location2coordinates = OutlookGeoCoordinates()
locations_location2coordinates.Latitude = 47.672

locations_location2coordinates.Longitude = -102.103


locations_location2.coordinates = locations_location2coordinates

locationsArray []= locationsLocation2;
locations_location3 = Location()
locations_location3.display_name = 'Home Office'


locationsArray []= locationsLocation3;
request_body.locations(locationsArray)


request_body.allow_new_time_proposals = True



request_configuration = EventsRequestBuilder.EventsRequestBuilderPostRequestConfiguration(
headers = {
'Prefer' : "outlook.timezone=\"Pacific Standard Time\"",
}

)


result = await client.me.events.post(request_body = request_body, request_configuration = request_configuration)


```