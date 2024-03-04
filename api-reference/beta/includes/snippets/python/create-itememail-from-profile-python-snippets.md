---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.item_email import ItemEmail

graph_client = GraphServiceClient(credentials, scopes)

request_body = ItemEmail(
	address = "Innocenty.Popov@adventureworks.com",
)

result = await graph_client.me.profile.emails.post(request_body)


```