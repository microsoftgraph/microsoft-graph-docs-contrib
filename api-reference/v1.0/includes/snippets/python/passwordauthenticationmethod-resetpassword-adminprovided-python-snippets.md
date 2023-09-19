---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ResetPasswordPostRequestBody(
	new_password = "Cuyo5459",
)

result = await graph_client.users.by_user_id('user-id').authentication.methods.by_method_id('authenticationMethod-id').reset_password.post(body = request_body)


```