---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = EventsRequestBuilder.EventsRequestBuilderGetQueryParameters(
		orderby = ["createdDateTime"],
		skip = 20,
)

request_configuration = EventsRequestBuilder.EventsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.me.events.get(request_configuration = request_configuration)


```