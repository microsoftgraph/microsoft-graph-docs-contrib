---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.clean_windows_device_post_request_body import CleanWindowsDevicePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = CleanWindowsDevicePostRequestBody(
	keep_user_data = True,
)

await graph_client.device_management.managed_devices.by_managed_device_id('managedDevice-id').clean_windows_device.post(request_body)


```