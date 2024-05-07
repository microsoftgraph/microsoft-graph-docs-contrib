---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.manageddevices.item.delete_user_from_shared_apple_device.delete_user_from_shared_apple_device_post_request_body import DeleteUserFromSharedAppleDevicePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeleteUserFromSharedAppleDevicePostRequestBody(
	user_principal_name = "User Principal Name value",
)

await graph_client.device_management.managed_devices.by_managed_device_id('managedDevice-id').delete_user_from_shared_apple_device.post(request_body)


```