---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeclinePostRequestBody(
	comment = "I won't be able to make this week. How about next week?",
	send_response = True,
	proposed_new_time = TimeSlot(
		start = DateTimeTimeZone(
			date_time = "2019-12-02T18:00:00",
			time_zone = "Pacific Standard Time",
		),
		end = DateTimeTimeZone(
			date_time = "2019-12-02T19:00:00",
			time_zone = "Pacific Standard Time",
		),
	),
)

await graph_client.me.events.by_event_id('event-id').decline.post(request_body)


```