---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.cloud_pc_user_setting import CloudPcUserSetting
from msgraph.generated.models.cloud_pc_restore_point_setting import CloudPcRestorePointSetting

graph_client = GraphServiceClient(credentials, scopes)

request_body = CloudPcUserSetting(
	odata_type = "#microsoft.graph.cloudPcUserSetting",
	display_name = "Example",
	self_service_enabled = False,
	local_admin_enabled = True,
	restore_point_setting = CloudPcRestorePointSetting(
		frequency_in_hours = 16,
		frequency_type = CloudPcRestorePointFrequencyType.SixteenHours,
		user_restore_enabled = True,
	),
)

result = await graph_client.device_management.virtual_endpoint.user_settings.post(request_body)


```