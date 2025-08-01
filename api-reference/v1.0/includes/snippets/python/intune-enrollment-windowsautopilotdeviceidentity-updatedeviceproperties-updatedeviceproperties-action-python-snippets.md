---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.windowsautopilotdeviceidentities.item.update_device_properties.update_device_properties_post_request_body import UpdateDevicePropertiesPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UpdateDevicePropertiesPostRequestBody(
	user_principal_name = "User Principal Name value",
	addressable_user_name = "Addressable User Name value",
	group_tag = "Group Tag value",
	display_name = "Display Name value",
)

await graph_client.device_management.windows_autopilot_device_identities.by_windows_autopilot_device_identity_id('windowsAutopilotDeviceIdentity-id').update_device_properties.post(request_body)


```