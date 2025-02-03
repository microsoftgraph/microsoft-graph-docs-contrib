---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.groups.item.threads.item.reply.reply_post_request_body import ReplyPostRequestBody
from msgraph_beta.generated.models.post import Post
from msgraph_beta.generated.models.item_body import ItemBody
from msgraph_beta.generated.models.body_type import BodyType
from msgraph_beta.generated.models.attachment import Attachment
from msgraph_beta.generated.models.reference_attachment import ReferenceAttachment
from msgraph_beta.generated.models.reference_attachment_provider import ReferenceAttachmentProvider
from msgraph_beta.generated.models.reference_attachment_permission import ReferenceAttachmentPermission
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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