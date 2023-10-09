---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = B2cAuthenticationMethodsPolicy(
	is_email_password_authentication_enabled = False,
	is_user_name_authentication_enabled = True,
	is_phone_one_time_password_authentication_enabled = True,
)

result = await graph_client.policies.b2c_authentication_method_policy.patch(body = request_body)


```