---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.manageddevices.bulk_restore_cloud_pc.bulk_restore_cloud_pc_post_request_body import BulkRestoreCloudPcPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = BulkRestoreCloudPcPostRequestBody(
	managed_device_ids = [
		"30d0e128-de93-41dc-89ec-33d84bb662a0",
		"7c82a3e3-9459-44e4-94d9-b92f93bf78dd",
	],
	restore_point_date_time = "2021-09-23T04:00:00.0000000",
	time_range = RestoreTimeRange.Before,
)

result = await graph_client.device_management.managed_devices.bulk_restore_cloud_pc.post(request_body)


```