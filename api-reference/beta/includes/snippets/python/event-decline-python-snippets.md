---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.events.item.decline.decline_post_request_body import DeclinePostRequestBody
from msgraph_beta.generated.models.time_slot import TimeSlot
from msgraph_beta.generated.models.date_time_time_zone import DateTimeTimeZone
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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