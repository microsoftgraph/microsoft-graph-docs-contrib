---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.devices.item.device_item_request_builder import DeviceItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = DeviceItemRequestBuilder.DeviceItemRequestBuilderGetQueryParameters(
		select = ["id","extensionAttributes"],
)

request_configuration = DeviceItemRequestBuilder.DeviceItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.devices.by_device_id('device-id').get(request_configuration = request_configuration)


```