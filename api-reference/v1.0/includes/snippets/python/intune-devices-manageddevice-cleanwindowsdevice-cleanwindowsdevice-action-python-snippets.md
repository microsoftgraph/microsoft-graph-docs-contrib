---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.manageddevices.item.clean_windows_device.clean_windows_device_post_request_body import CleanWindowsDevicePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CleanWindowsDevicePostRequestBody(
	keep_user_data = True,
)

await graph_client.device_management.managed_devices.by_managed_device_id('managedDevice-id').clean_windows_device.post(request_body)


```