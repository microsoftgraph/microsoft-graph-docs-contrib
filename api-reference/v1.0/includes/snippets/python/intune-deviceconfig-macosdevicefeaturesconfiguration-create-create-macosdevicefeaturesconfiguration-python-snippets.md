---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.mac_o_s_device_features_configuration import MacOSDeviceFeaturesConfiguration

graph_client = GraphServiceClient(credentials, scopes)

request_body = MacOSDeviceFeaturesConfiguration(
	odata_type = "#microsoft.graph.macOSDeviceFeaturesConfiguration",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
)

result = await graph_client.device_management.device_configurations.post(request_body)


```