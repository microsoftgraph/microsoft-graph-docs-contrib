---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.messages.item.reply_all.reply_all_post_request_body import ReplyAllPostRequestBody
from msgraph_beta.generated.models.message import Message
from msgraph_beta.generated.models.attachment import Attachment
from msgraph_beta.generated.models.file_attachment import FileAttachment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ReplyAllPostRequestBody(
	message = Message(
		attachments = [
			FileAttachment(
				odata_type = "#microsoft.graph.fileAttachment",
				name = "guidelines.txt",
				content_bytes = base64.urlsafe_b64decode("bWFjIGFuZCBjaGVlc2UgdG9kYXk="),
			),
		],
	),
	comment = "Please take a look at the attached guidelines before you decide on the name.",
)

await graph_client.me.messages.by_message_id('message-id').reply_all.post(request_body)


```