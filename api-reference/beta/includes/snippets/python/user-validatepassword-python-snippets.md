---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ValidatePasswordPostRequestBody(
	password = "1234567890",
)

result = await graph_client.users.validate_password.post(body = request_body)


```