---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = ResetPasswordPostRequestBody(
)

result = await graph_client.users.by_user_id('user-id').authentication.methods.by_authentication_method_id('authenticationMethod-id').reset_password.post(request_body)


```