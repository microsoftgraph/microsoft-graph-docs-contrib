---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.messages.item.create_reply_all.create_reply_all_post_request_body import CreateReplyAllPostRequestBody
from msgraph.generated.models.message import Message
from msgraph.generated.models.attachment import Attachment
from msgraph.generated.models.file_attachment import FileAttachment

graph_client = GraphServiceClient(credentials, scopes)

request_body = CreateReplyAllPostRequestBody(
	message = Message(
		attachments = [
			FileAttachment(
				odata_type = "#microsoft.graph.fileAttachment",
				name = "guidelines.txt",
				content_bytes = base64.urlsafe_b64decode("bWFjIGFuZCBjaGVlc2UgdG9kYXk="),
			),
		],
	),
	comment = "if the project gets approved, please take a look at the attached guidelines before you decide on the name.",
)

result = await graph_client.me.messages.by_message_id('message-id').create_reply_all.post(request_body)


```