---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.email_authentication_method import EmailAuthenticationMethod

graph_client = GraphServiceClient(credentials, scopes)

request_body = EmailAuthenticationMethod(
	email_address = "kim@contoso.com",
)

result = await graph_client.users.by_user_id('user-id').authentication.email_methods.post(request_body)


```