---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.manageddevices.item.windows_defender_scan.windows_defender_scan_post_request_body import WindowsDefenderScanPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = WindowsDefenderScanPostRequestBody(
	quick_scan = True,
)

await graph_client.device_management.managed_devices.by_managed_device_id('managedDevice-id').windows_defender_scan.post(request_body)


```