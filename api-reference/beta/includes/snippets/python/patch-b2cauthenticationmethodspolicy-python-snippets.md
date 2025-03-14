---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.b2c_authentication_methods_policy import B2cAuthenticationMethodsPolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = B2cAuthenticationMethodsPolicy(
	is_email_password_authentication_enabled = False,
	is_user_name_authentication_enabled = True,
	is_phone_one_time_password_authentication_enabled = True,
)

result = await graph_client.policies.b2c_authentication_methods_policy.patch(request_body)


```