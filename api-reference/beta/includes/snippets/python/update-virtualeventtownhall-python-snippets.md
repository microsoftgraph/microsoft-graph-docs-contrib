---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.virtual_event_townhall import VirtualEventTownhall
from msgraph_beta.generated.models.date_time_time_zone import DateTimeTimeZone
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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