---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.change_password.change_password_post_request_body import ChangePasswordPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = ChangePasswordPostRequestBody(
	current_password = "xWwvJ]6NMw+bWH-d",
	new_password = "0eM85N54wFxWwvJ]",
)

await graph_client.me.change_password.post(request_body)


```