---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = SnoozeReminderPostRequestBody(
	new_reminder_time = DateTimeTimeZone(
		date_time = "dateTime-value",
		time_zone = "timeZone-value",
	),
)

await graph_client.me.events.by_event_id('event-id').snooze_reminder.post(request_body)


```