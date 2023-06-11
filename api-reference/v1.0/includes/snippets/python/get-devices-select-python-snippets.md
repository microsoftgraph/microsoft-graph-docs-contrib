---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = DevicesRequestBuilder.DevicesRequestBuilderGetQueryParameters(
		select = ["id","extensionAttributes"],
)

request_configuration = DevicesRequestBuilder.DevicesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.devices.get(request_configuration = request_configuration)


```