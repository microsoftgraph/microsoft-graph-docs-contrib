---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.windowsautopilotdeviceidentities.item.assign_user_to_device.assign_user_to_device_post_request_body import AssignUserToDevicePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AssignUserToDevicePostRequestBody(
	user_principal_name = "User Principal Name value",
	addressable_user_name = "Addressable User Name value",
)

await graph_client.device_management.windows_autopilot_device_identities.by_windows_autopilot_device_identity_id('windowsAutopilotDeviceIdentity-id').assign_user_to_device.post(request_body)


```