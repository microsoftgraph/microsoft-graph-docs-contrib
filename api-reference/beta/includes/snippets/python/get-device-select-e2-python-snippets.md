---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = DeviceRequestBuilder.DeviceRequestBuilderGetQueryParameters(
		select = ["id","extensionAttributes"],
)

request_configuration = DeviceRequestBuilder.DeviceRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.devices.by_device_id('device-id').get(request_configuration = request_configuration)


```