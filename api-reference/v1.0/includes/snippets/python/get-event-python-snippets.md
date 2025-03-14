---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.events.item.event_item_request_builder import EventItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = EventItemRequestBuilder.EventItemRequestBuilderGetQueryParameters(
		select = ["subject","body","bodyPreview","organizer","attendees","start","end","location","hideAttendees"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("Prefer", "outlook.timezone=\"Pacific Standard Time\"")


result = await graph_client.me.events.by_event_id('event-id').get(request_configuration = request_configuration)


```