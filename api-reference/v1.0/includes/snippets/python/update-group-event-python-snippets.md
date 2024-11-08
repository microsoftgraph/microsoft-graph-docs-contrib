---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.event import Event
from msgraph.generated.models.location import Location
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Event(
	location = Location(
		display_name = "Conf Room 2",
	),
)

result = await graph_client.groups.by_group_id('group-id').calendar.events.by_event_id('event-id').patch(request_body)


```