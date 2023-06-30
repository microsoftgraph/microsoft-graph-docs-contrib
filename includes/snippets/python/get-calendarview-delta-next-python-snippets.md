---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = DeltaRequestBuilder.DeltaRequestBuilderGetQueryParameters(
		deltatoken = "R0usmcMDNGg0J1E",
)

request_configuration = DeltaRequestBuilder.DeltaRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
headers = {
			'Prefer' : "odata.maxpagesize=2",
}

)


result = await client.me.calendar_view.delta.get(request_configuration = request_configuration)


```