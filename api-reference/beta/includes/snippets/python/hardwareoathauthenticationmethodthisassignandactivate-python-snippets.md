---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.authentication.hardwareoathmethods.assign_and_activate.assign_and_activate_post_request_body import AssignAndActivatePostRequestBody
from msgraph_beta.generated.models.hardware_oath_token_authentication_method_device import HardwareOathTokenAuthenticationMethodDevice
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AssignAndActivatePostRequestBody(
	device = HardwareOathTokenAuthenticationMethodDevice(
		id = "aad49556-####-####-####-############",
	),
	verification_code = "588651",
	display_name = "Amy Masters Token",
)

await graph_client.me.authentication.hardware_oath_methods.assign_and_activate.post(request_body)


```