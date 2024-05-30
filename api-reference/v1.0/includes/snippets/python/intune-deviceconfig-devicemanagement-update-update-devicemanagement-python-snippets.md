---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device_management import DeviceManagement
from msgraph.generated.models.device_management_settings import DeviceManagementSettings

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