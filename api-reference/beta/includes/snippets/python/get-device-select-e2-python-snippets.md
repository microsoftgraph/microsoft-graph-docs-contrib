---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = DeviceItemRequestBuilder.DeviceItemRequestBuilderGetQueryParameters(
		select = ["id","extensionAttributes"],
)

request_configuration = DeviceItemRequestBuilder.DeviceItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.devices.by_device_id('device-id').get(request_configuration = request_configuration)


```