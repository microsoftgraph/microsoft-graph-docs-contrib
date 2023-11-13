---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = DeltaRequestBuilder.DeltaRequestBuilderGetQueryParameters(
		start_date_time = "2016-12-01T00:00:00Z",
		end_date_time = "2016-12-30T00:00:00Z",
)

request_configuration = DeltaRequestBuilder.DeltaRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
headers = {
			'Prefer' : "odata.maxpagesize=2",
}

)

result = await graph_client.me.calendar_view.delta.get(request_configuration = request_configuration)


```