---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.wipe_post_request_body import WipePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = WipePostRequestBody(
	keep_enrollment_data = True,
	keep_user_data = True,
	mac_os_unlock_code = "Mac Os Unlock Code value",
	persist_esim_data_plan = True,
)

await graph_client.device_management.managed_devices.by_managed_device_id('managedDevice-id').wipe.post(request_body)


```