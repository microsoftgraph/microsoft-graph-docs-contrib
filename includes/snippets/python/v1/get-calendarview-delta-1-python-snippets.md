---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = DeltaRequestBuilder.DeltaRequestBuilderGetQueryParameters(
		startDateTime = "2016-12-01T00:00:00Z",
		endDateTime = "2016-12-30T00:00:00Z",
)

request_configuration = DeltaRequestBuilder.DeltaRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
headers = {
			'Prefer' : "odata.maxpagesize=2",
}

)


result = await client.me.calendar_view.delta.get(request_configuration = request_configuration)


```