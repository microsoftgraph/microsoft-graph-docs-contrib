---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = EventsRequestBuilder.EventsRequestBuilderGetQueryParameters(
		select = ["subject","body","bodyPreview"],
)

request_configuration = EventsRequestBuilder.EventsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
headers = {
			'Prefer' : "outlook.body-content-type=\"text\"",
}

)

result = await graph_client.me.events.get(request_configuration = request_configuration)


```