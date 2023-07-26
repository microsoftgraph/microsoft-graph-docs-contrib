---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = EventRequestBuilder.EventRequestBuilderGetQueryParameters(
		select = ["subject","start","end","occurrenceId","exceptionOccurrences","cancelledOccurrences"],
		expand = ["exceptionOccurrences"],
)

request_configuration = EventRequestBuilder.EventRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.me.events.by_event_id('event-id').get(request_configuration = request_configuration)


```