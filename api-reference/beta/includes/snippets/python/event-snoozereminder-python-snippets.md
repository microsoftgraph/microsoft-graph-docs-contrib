---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.snooze_reminder_post_request_body import SnoozeReminderPostRequestBody
from msgraph.generated.models.date_time_time_zone import DateTimeTimeZone

graph_client = GraphServiceClient(credentials, scopes)

request_body = SnoozeReminderPostRequestBody(
	new_reminder_time = DateTimeTimeZone(
		date_time = "2016-10-19T10:37:00Z",
		time_zone = "timeZone-value",
	),
)

await graph_client.me.events.by_event_id('event-id').snooze_reminder.post(request_body)


```