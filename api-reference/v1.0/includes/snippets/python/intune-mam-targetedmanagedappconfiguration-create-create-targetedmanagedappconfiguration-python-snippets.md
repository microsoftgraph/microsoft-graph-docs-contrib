---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.targeted_managed_app_configuration import TargetedManagedAppConfiguration
from msgraph.generated.models.key_value_pair import KeyValuePair
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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