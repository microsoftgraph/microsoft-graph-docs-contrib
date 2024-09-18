---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.validate_password.validate_password_post_request_body import ValidatePasswordPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = ValidatePasswordPostRequestBody(
	password = "1234567890",
)

result = await graph_client.users.validate_password.post(request_body)


```