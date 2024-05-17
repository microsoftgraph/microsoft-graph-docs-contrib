---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.virtual_event_townhall import VirtualEventTownhall
from msgraph.generated.models.date_time_time_zone import DateTimeTimeZone

graph_client = GraphServiceClient(credentials, scopes)

request_body = VirtualEventTownhall(
	start_date_time = DateTimeTimeZone(
		date_time = "2024-03-31T10:00:00",
		time_zone = "Pacific Standard Time",
	),
	end_date_time = DateTimeTimeZone(
		date_time = "2024-03-31T17:00:00",
		time_zone = "Pacific Standard Time",
	),
)

result = await graph_client.solutions.virtual_events.townhalls.by_virtual_event_townhall_id('virtualEventTownhall-id').patch(request_body)


```