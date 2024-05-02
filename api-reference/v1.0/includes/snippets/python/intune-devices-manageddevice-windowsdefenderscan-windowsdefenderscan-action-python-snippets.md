---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.manageddevices.item.windows_defender_scan.windows_defender_scan_post_request_body import WindowsDefenderScanPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = WindowsDefenderScanPostRequestBody(
	quick_scan = True,
)

await graph_client.device_management.managed_devices.by_managed_device_id('managedDevice-id').windows_defender_scan.post(request_body)


```