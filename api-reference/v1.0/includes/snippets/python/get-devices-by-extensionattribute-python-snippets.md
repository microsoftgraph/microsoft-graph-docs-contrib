---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = DevicesRequestBuilder.DevicesRequestBuilderGetQueryParameters(
		filter = "extensionAttributes/extensionAttribute1 eq 'BYOD-Device'",
		count = True,
)

request_configuration = DevicesRequestBuilder.DevicesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
headers = {
			'ConsistencyLevel' : "eventual",
}

)

result = await graph_client.devices.get(request_configuration = request_configuration)


```