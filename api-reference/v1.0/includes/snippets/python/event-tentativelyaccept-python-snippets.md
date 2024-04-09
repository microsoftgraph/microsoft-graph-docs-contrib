---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.tentatively_accept_post_request_body import TentativelyAcceptPostRequestBody
from msgraph.generated.models.time_slot import TimeSlot
from msgraph.generated.models.date_time_time_zone import DateTimeTimeZone

graph_client = GraphServiceClient(credentials, scopes)

request_body = TentativelyAcceptPostRequestBody(
	comment = "I may not be able to make this week. How about next week?",
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

await graph_client.me.events.by_event_id('event-id').tentatively_accept.post(request_body)


```