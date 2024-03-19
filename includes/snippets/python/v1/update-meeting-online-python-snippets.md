---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.event import Event

graph_client = GraphServiceClient(credentials, scopes)

request_body = Event(
	is_online_meeting = True,
	online_meeting_provider = OnlineMeetingProviderType.TeamsForBusiness,
)

result = await graph_client.me.events.by_event_id('event-id').patch(request_body)


```