---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = EventsRequestBuilder.EventsRequestBuilderGetQueryParameters(
		orderby = ["createdDateTime"],
		skip = 20,
)

request_configuration = EventsRequestBuilder.EventsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.events.get(request_configuration = request_configuration)


```