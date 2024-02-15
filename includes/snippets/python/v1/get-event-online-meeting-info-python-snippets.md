---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.events.item.event_item_request_builder import EventItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = EventItemRequestBuilder.EventItemRequestBuilderGetQueryParameters(
		select = ["isOnlineMeeting","onlineMeetingProvider","onlineMeeting"],
)

request_configuration = EventItemRequestBuilder.EventItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.events.by_event_id('event-id').get(request_configuration = request_configuration)


```