---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.change_password.change_password_post_request_body import ChangePasswordPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ChangePasswordPostRequestBody(
	current_password = "xWwvJ]6NMw+bWH-d",
	new_password = "0eM85N54wFxWwvJ]",
)

await graph_client.me.change_password.post(request_body)


```