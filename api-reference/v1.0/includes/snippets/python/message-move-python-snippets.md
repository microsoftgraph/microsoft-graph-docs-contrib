---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.messages.item.move.move_post_request_body import MovePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = MovePostRequestBody(
	destination_id = "deleteditems",
)

result = await graph_client.me.messages.by_message_id('message-id').move.post(request_body)


```