---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.manageddevices.item.delete_user_from_shared_apple_device.delete_user_from_shared_apple_device_post_request_body import DeleteUserFromSharedAppleDevicePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DeleteUserFromSharedAppleDevicePostRequestBody(
	user_principal_name = "User Principal Name value",
)

await graph_client.device_management.managed_devices.by_managed_device_id('managedDevice-id').delete_user_from_shared_apple_device.post(request_body)


```