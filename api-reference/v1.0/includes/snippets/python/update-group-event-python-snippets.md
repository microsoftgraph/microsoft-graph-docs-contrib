---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = Event(
	location = Location(
		display_name = "Conf Room 2",
	),
)

result = await graph_client.groups.by_group_id('group-id').calendar.events.by_event_id('event-id').patch(body = request_body)


```