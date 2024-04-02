---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.update_device_properties_post_request_body import UpdateDevicePropertiesPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = UpdateDevicePropertiesPostRequestBody(
	user_principal_name = "User Principal Name value",
	addressable_user_name = "Addressable User Name value",
	group_tag = "Group Tag value",
	display_name = "Display Name value",
)

await graph_client.device_management.windows_autopilot_device_identities.by_windows_autopilot_device_identity_id('windowsAutopilotDeviceIdentity-id').update_device_properties.post(request_body)


```