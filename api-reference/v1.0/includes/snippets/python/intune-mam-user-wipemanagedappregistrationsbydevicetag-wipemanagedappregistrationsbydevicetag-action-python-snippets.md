---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.wipe_managed_app_registrations_by_device_tag_post_request_body import WipeManagedAppRegistrationsByDeviceTagPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = WipeManagedAppRegistrationsByDeviceTagPostRequestBody(
	device_tag = "Device Tag value",
)

await graph_client.users.by_user_id('user-id').wipe_managed_app_registrations_by_device_tag.post(request_body)


```