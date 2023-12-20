---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceManagement(
	odata_type = "#microsoft.graph.deviceManagement",
	settings = DeviceManagementSettings(
		odata_type = "microsoft.graph.deviceManagementSettings",
		device_compliance_checkin_threshold_days = 4,
		is_scheduled_action_enabled = True,
		secure_by_default = True,
	),
	intune_account_id = UUID("cf1549a1-49a1-cf15-a149-15cfa14915cf"),
)

result = await graph_client.device_management.patch(request_body)


```