---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.groups.item.threads.item.posts.item.forward.forward_post_request_body import ForwardPostRequestBody
from msgraph_beta.generated.models.recipient import Recipient
from msgraph_beta.generated.models.email_address import EmailAddress

graph_client = GraphServiceClient(credentials, scopes)

request_body = ForwardPostRequestBody(
	comment = "comment-value",
	to_recipients = [
		Recipient(
			email_address = EmailAddress(
				name = "name-value",
				address = "address-value",
			),
		),
	],
)

await graph_client.groups.by_group_id('group-id').threads.by_conversation_thread_id('conversationThread-id').posts.by_post_id('post-id').forward.post(request_body)


```