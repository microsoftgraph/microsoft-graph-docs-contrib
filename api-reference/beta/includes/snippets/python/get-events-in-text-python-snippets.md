---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.events.events_request_builder import EventsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = EventsRequestBuilder.EventsRequestBuilderGetQueryParameters(
		select = ["subject","body","bodyPreview"],
)

request_configuration = EventsRequestBuilder.EventsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("Prefer", "outlook.body-content-type=\"text\"")


result = await graph_client.me.events.get(request_configuration = request_configuration)


```