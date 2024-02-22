---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.restore_cloud_pc_post_request_body import RestoreCloudPcPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = RestoreCloudPcPostRequestBody(
	cloud_pc_snapshot_id = "A00009UV000_93aff428-61f2-467f-a879-1102af6fd4a8",
)

await graph_client.device_management.managed_devices.by_managed_device_id('managedDevice-id').restore_cloud_pc.post(request_body)


```