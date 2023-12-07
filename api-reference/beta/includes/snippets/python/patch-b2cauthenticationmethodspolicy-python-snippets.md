---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = B2cAuthenticationMethodsPolicy(
	is_email_password_authentication_enabled = False,
	is_user_name_authentication_enabled = True,
	is_phone_one_time_password_authentication_enabled = True,
)

result = await graph_client.policies.b2c_authentication_methods_policy.patch(request_body)


```