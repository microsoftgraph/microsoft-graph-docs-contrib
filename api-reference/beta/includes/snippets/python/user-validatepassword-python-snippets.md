---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.validate_password.validate_password_post_request_body import ValidatePasswordPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ValidatePasswordPostRequestBody(
	password = "1234567890",
)

result = await graph_client.users.validate_password.post(request_body)


```