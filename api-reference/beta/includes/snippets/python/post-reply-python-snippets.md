---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.groups.item.threads.item.posts.item.reply.reply_post_request_body import ReplyPostRequestBody
from msgraph.generated.models.post import Post
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.recipient import Recipient
from msgraph.generated.models.email_address import EmailAddress
from msgraph.generated.models.attachment import Attachment
from msgraph.generated.models.file_attachment import FileAttachment

graph_client = GraphServiceClient(credentials, scopes)

request_body = ReplyPostRequestBody(
	post = Post(
		body = ItemBody(
			content_type = BodyType.Text,
			content = "content-value",
		),
		received_date_time = "2016-10-19T10:37:00Z",
		has_attachments = True,
		from = Recipient(
			email_address = EmailAddress(
				name = "name-value",
				address = "address-value",
			),
		),
		sender = Recipient(
			email_address = EmailAddress(
				name = "name-value",
				address = "address-value",
			),
		),
		conversation_thread_id = "conversationThreadId-value",
		new_participants = [
			Recipient(
				email_address = EmailAddress(
					name = "name-value",
					address = "address-value",
				),
			),
		],
		conversation_id = "conversationId-value",
		created_date_time = "2016-10-19T10:37:00Z",
		last_modified_date_time = "2016-10-19T10:37:00Z",
		change_key = "changeKey-value",
		categories = [
			"categories-value",
		],
		id = "id-value",
		in_reply_to = Post(
		),
		attachments = [
			FileAttachment(
				odata_type = "#microsoft.graph.fileAttachment",
				last_modified_date_time = "2016-10-19T10:37:00Z",
				name = "name-value",
				content_type = "contentType-value",
				size = 99,
				is_inline = True,
				id = "id-value",
			),
		],
	),
)

await graph_client.groups.by_group_id('group-id').threads.by_conversation_thread_id('conversationThread-id').posts.by_post_id('post-id').reply.post(request_body)


```