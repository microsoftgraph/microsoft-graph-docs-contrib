---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.mark_as_not_junk_post_request_body import MarkAsNotJunkPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = MarkAsNotJunkPostRequestBody(
	move_to_inbox = True,
)

result = await graph_client.me.messages.by_message_id('message-id').mark_as_not_junk.post(request_body)


```