---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.events.item.snooze_reminder.snooze_reminder_post_request_body import SnoozeReminderPostRequestBody
from msgraph.generated.models.date_time_time_zone import DateTimeTimeZone
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SnoozeReminderPostRequestBody(
	new_reminder_time = DateTimeTimeZone(
		date_time = "dateTime-value",
		time_zone = "timeZone-value",
	),
)

await graph_client.me.events.by_event_id('event-id').snooze_reminder.post(request_body)


```