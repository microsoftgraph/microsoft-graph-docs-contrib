---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.event import Event
from msgraph.generated.models.response_status import ResponseStatus

graph_client = GraphServiceClient(credentials, scopes)

request_body = Event(
	original_start_time_zone = "originalStartTimeZone-value",
	original_end_time_zone = "originalEndTimeZone-value",
	response_status = ResponseStatus(
		response = ResponseType.None,
		time = "datetime-value",
	),
	recurrence = None,
	reminder_minutes_before_start = 99,
	is_online_meeting = True,
	online_meeting_provider = OnlineMeetingProviderType.TeamsForBusiness,
	is_reminder_on = True,
	hide_attendees = False,
	categories = [
		"Red category",
	],
)

result = await graph_client.me.events.by_event_id('event-id').patch(request_body)


```