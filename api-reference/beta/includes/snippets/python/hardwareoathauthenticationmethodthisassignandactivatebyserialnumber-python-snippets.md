---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.authentication.hardwareoathmethods.assign_and_activate_by_serial_number.assign_and_activate_by_serial_number_post_request_body import AssignAndActivateBySerialNumberPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AssignAndActivateBySerialNumberPostRequestBody(
	verification_code = "588651",
	serial_number = "TOTP123456",
	display_name = "Amy Masters Token",
)

await graph_client.me.authentication.hardware_oath_methods.assign_and_activate_by_serial_number.post(request_body)


```