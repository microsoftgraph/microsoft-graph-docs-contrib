---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devices.devices_request_builder import DevicesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = DevicesRequestBuilder.DevicesRequestBuilderGetQueryParameters(
		select = ["id","extensionAttributes"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.devices.get(request_configuration = request_configuration)


```