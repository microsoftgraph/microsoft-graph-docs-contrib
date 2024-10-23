---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.email_authentication_method import EmailAuthenticationMethod
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EmailAuthenticationMethod(
	email_address = "kim@contoso.com",
)

result = await graph_client.users.by_user_id('user-id').authentication.email_methods.post(request_body)


```