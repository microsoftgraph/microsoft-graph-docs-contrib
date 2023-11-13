---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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

result = await graph_client.device_app_management.targeted_managed_app_configurations.by_targeted_managed_app_configuration_id('targetedManagedAppConfiguration-id').patch(request_body)


```