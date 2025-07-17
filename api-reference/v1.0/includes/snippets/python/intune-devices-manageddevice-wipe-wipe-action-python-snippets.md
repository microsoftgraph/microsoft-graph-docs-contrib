---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.manageddevices.item.wipe.wipe_post_request_body import WipePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = WipePostRequestBody(
	keep_enrollment_data = True,
	keep_user_data = True,
	mac_os_unlock_code = "Mac Os Unlock Code value",
	persist_esim_data_plan = True,
)

await graph_client.device_management.managed_devices.by_managed_device_id('managedDevice-id').wipe.post(request_body)


```