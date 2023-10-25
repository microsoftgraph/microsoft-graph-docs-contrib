---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Event(
	original_start_time_zone = "originalStartTimeZone-value",
	original_end_time_zone = "originalEndTimeZone-value",
	response_status = ResponseStatus(
		response = ResponseType.None,
		time = "datetime-value",
	),
	uid = "iCalUId-value",
	reminder_minutes_before_start = 99,
	is_reminder_on = True,
)

result = await graph_client.groups.by_group_id('group-id').events.by_event_id('event-id').patch(request_body)


```