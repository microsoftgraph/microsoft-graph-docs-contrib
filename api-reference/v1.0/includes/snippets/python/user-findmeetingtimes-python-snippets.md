---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.find_meeting_times.find_meeting_times_request_builder import FindMeetingTimesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph.generated.users.item.find_meeting_times.find_meeting_times_post_request_body import FindMeetingTimesPostRequestBody
from msgraph.generated.models.attendee_base import AttendeeBase
from msgraph.generated.models.attendee_type import AttendeeType
from msgraph.generated.models.email_address import EmailAddress
from msgraph.generated.models.location_constraint import LocationConstraint
from msgraph.generated.models.location_constraint_item import LocationConstraintItem
from msgraph.generated.models.time_constraint import TimeConstraint
from msgraph.generated.models.activity_domain import ActivityDomain
from msgraph.generated.models.time_slot import TimeSlot
from msgraph.generated.models.date_time_time_zone import DateTimeTimeZone
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = FindMeetingTimesPostRequestBody(
	attendees = [
		AttendeeBase(
			type = AttendeeType.Required,
			email_address = EmailAddress(
				name = "Alex Wilbur",
				address = "alexw@contoso.com",
			),
		),
	],
	location_constraint = LocationConstraint(
		is_required = False,
		suggest_location = False,
		locations = [
			LocationConstraintItem(
				resolve_availability = False,
				display_name = "Conf room Hood",
			),
		],
	),
	time_constraint = TimeConstraint(
		activity_domain = ActivityDomain.Work,
		time_slots = [
			TimeSlot(
				start = DateTimeTimeZone(
					date_time = "2019-04-16T09:00:00",
					time_zone = "Pacific Standard Time",
				),
				end = DateTimeTimeZone(
					date_time = "2019-04-18T17:00:00",
					time_zone = "Pacific Standard Time",
				),
			),
		],
	),
	is_organizer_optional = False,
	meeting_duration = "PT1H",
	return_suggestion_reasons = True,
	minimum_attendee_percentage = 100,
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("Prefer", "outlook.timezone=\"Pacific Standard Time\"")


result = await graph_client.me.find_meeting_times.post(request_body, request_configuration = request_configuration)


```