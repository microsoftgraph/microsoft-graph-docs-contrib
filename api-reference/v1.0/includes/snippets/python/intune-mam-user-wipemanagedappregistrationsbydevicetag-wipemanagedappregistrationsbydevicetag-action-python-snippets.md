---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.wipe_managed_app_registrations_by_device_tag.wipe_managed_app_registrations_by_device_tag_post_request_body import WipeManagedAppRegistrationsByDeviceTagPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = WipeManagedAppRegistrationsByDeviceTagPostRequestBody(
	device_tag = "Device Tag value",
)

await graph_client.users.by_user_id('user-id').wipe_managed_app_registrations_by_device_tag.post(request_body)


```