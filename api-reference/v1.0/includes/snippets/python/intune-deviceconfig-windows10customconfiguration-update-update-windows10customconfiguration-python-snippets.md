---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.windows10_custom_configuration import Windows10CustomConfiguration
from msgraph.generated.models.oma_setting import OmaSetting

graph_client = GraphServiceClient(credentials, scopes)

request_body = Windows10CustomConfiguration(
	odata_type = "#microsoft.graph.windows10CustomConfiguration",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	oma_settings = [
		OmaSetting(
			odata_type = "microsoft.graph.omaSetting",
			display_name = "Display Name value",
			description = "Description value",
			oma_uri = "Oma Uri value",
		),
	],
)

result = await graph_client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').patch(request_body)


```