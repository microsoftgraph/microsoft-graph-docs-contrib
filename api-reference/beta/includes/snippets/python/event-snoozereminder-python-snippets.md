---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.events.item.snooze_reminder.snooze_reminder_post_request_body import SnoozeReminderPostRequestBody
from msgraph_beta.generated.models.date_time_time_zone import DateTimeTimeZone
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SnoozeReminderPostRequestBody(
	new_reminder_time = DateTimeTimeZone(
		date_time = "2016-10-19T10:37:00Z",
		time_zone = "timeZone-value",
	),
)

await graph_client.me.events.by_event_id('event-id').snooze_reminder.post(request_body)


```