---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.groups.item.threads.item.reply.reply_post_request_body import ReplyPostRequestBody
from msgraph.generated.models.post import Post
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.body_type import BodyType
from msgraph.generated.models.attachment import Attachment
from msgraph.generated.models.file_attachment import FileAttachment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ReplyPostRequestBody(
	post = Post(
		body = ItemBody(
			content_type = BodyType.Text,
			content = "Which quarter does that file cover? See my attachment.",
		),
		attachments = [
			FileAttachment(
				odata_type = "#microsoft.graph.fileAttachment",
				name = "Another file as attachment",
				content_bytes = base64.urlsafe_b64decode("VGhpcyBpcyBhIGZpbGUgdG8gYmUgYXR0YWNoZWQu"),
			),
		],
	),
)

await graph_client.groups.by_group_id('group-id').threads.by_conversation_thread_id('conversationThread-id').reply.post(request_body)


```