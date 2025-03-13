---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.event import Event
from msgraph_beta.generated.models.response_status import ResponseStatus
from msgraph_beta.generated.models.response_type import ResponseType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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