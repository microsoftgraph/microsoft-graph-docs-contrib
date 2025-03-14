---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.authentication.methods.item.reset_password.reset_password_post_request_body import ResetPasswordPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ResetPasswordPostRequestBody(
	new_password = "Cuyo5459",
)

result = await graph_client.users.by_user_id('user-id').authentication.methods.by_authentication_method_id('authenticationMethod-id').reset_password.post(request_body)


```