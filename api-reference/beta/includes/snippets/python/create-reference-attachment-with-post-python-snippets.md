---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.reply_post_request_body import ReplyPostRequestBody
from msgraph.generated.models.post import Post
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.attachment import Attachment
from msgraph.generated.models.reference_attachment import ReferenceAttachment

graph_client = GraphServiceClient(credentials, scopes)

request_body = ReplyPostRequestBody(
	post = Post(
		body = ItemBody(
			content_type = BodyType.Text,
			content = "I attached a reference to a file on OneDrive.",
		),
		attachments = [
			ReferenceAttachment(
				odata_type = "#microsoft.graph.referenceAttachment",
				name = "Personal pictures",
				source_url = "https://contoso.com/personal/mario_contoso_net/Documents/Pics",
				provider_type = ReferenceAttachmentProvider.OneDriveConsumer,
				permission = ReferenceAttachmentPermission.Edit,
				is_folder = True,
			),
		],
	),
)

await graph_client.groups.by_group_id('group-id').threads.by_conversation_thread_id('conversationThread-id').reply.post(request_body)


```