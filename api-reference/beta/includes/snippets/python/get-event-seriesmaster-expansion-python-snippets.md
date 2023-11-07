---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = EventItemRequestBuilder.EventItemRequestBuilderGetQueryParameters(
		select = ["subject","start","end","occurrenceId","exceptionOccurrences","cancelledOccurrences"],
		expand = ["exceptionOccurrences"],
)

request_configuration = EventItemRequestBuilder.EventItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.events.by_event_id('event-id').get(request_configuration = request_configuration)


```