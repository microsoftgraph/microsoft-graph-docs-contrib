---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.targeted_managed_app_configuration import TargetedManagedAppConfiguration
from msgraph.generated.models.key_value_pair import KeyValuePair

graph_client = GraphServiceClient(credentials, scopes)

request_body = TargetedManagedAppConfiguration(
	odata_type = "#microsoft.graph.targetedManagedAppConfiguration",
	display_name = "Display Name value",
	description = "Description value",
	version = "Version value",
	custom_settings = [
		KeyValuePair(
			odata_type = "microsoft.graph.keyValuePair",
			name = "Name value",
			value = "Value value",
		),
	],
	deployed_app_count = 0,
	is_assigned = True,
)

result = await graph_client.device_app_management.targeted_managed_app_configurations.post(request_body)


```