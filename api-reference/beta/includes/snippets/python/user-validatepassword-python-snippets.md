---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = ValidatePasswordPostRequestBody(
	password = "1234567890",
)

result = await graph_client.users.validate_password.post(request_body)


```