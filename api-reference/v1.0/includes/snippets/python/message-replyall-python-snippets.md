---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.messages.item.reply_all.reply_all_post_request_body import ReplyAllPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = ReplyAllPostRequestBody(
	comment = "comment-value",
)

await graph_client.me.messages.by_message_id('message-id').reply_all.post(request_body)


```