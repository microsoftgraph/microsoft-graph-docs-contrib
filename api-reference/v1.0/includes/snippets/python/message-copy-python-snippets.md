---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.messages.item.copy.copy_post_request_body import CopyPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = CopyPostRequestBody(
	destination_id = "destinationId-value",
)

result = await graph_client.me.messages.by_message_id('message-id').copy.post(request_body)


```