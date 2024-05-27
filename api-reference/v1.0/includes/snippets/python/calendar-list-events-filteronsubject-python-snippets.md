---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.calendar.events.events_request_builder import EventsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = EventsRequestBuilder.EventsRequestBuilderGetQueryParameters(
		filter = "startsWith(subject,'All')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.calendar.events.get(request_configuration = request_configuration)


```