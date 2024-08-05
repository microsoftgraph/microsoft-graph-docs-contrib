---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devices.item.device_item_request_builder import DeviceItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = DeviceItemRequestBuilder.DeviceItemRequestBuilderGetQueryParameters(
		select = ["id","extensionAttributes"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.devices.by_device_id('device-id').get(request_configuration = request_configuration)


```