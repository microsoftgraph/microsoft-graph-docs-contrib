---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.authentication.hardwareoathmethods.item.activate.activate_post_request_body import ActivatePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ActivatePostRequestBody(
	verification_code = "588651",
	display_name = "Amy Masters Token",
)

await graph_client.me.authentication.hardware_oath_methods.by_hardware_oath_authentication_method_id('hardwareOathAuthenticationMethod-id').activate.post(request_body)


```