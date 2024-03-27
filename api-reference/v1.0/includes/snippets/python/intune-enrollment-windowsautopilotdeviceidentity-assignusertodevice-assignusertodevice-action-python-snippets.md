---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.assign_user_to_device_post_request_body import AssignUserToDevicePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = AssignUserToDevicePostRequestBody(
	user_principal_name = "User Principal Name value",
	addressable_user_name = "Addressable User Name value",
)

await graph_client.device_management.windows_autopilot_device_identities.by_windows_autopilot_device_identity_id('windowsAutopilotDeviceIdentity-id').assign_user_to_device.post(request_body)


```