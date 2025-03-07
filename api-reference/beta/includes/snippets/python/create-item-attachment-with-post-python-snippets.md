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
from msgraph_beta.generated.models.item_attachment import ItemAttachment
from msgraph_beta.generated.models.event import Event
from msgraph_beta.generated.models.date_time_time_zone import DateTimeTimeZone
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ReplyPostRequestBody(
	post = Post(
		body = ItemBody(
			content_type = BodyType.Text,
			content = "I attached an event.",
		),
		attachments = [
			ItemAttachment(
				odata_type = "#microsoft.graph.itemAttachment",
				name = "Holiday event",
				item = Event(
					odata_type = "microsoft.graph.event",
					subject = "Discuss gifts for children",
					body = ItemBody(
						content_type = BodyType.Html,
						content = "Let's look for funding!",
					),
					start = DateTimeTimeZone(
						date_time = "2019-12-02T18:00:00",
						time_zone = "Pacific Standard Time",
					),
					end = DateTimeTimeZone(
						date_time = "2019-12-02T19:00:00",
						time_zone = "Pacific Standard Time",
					),
				),
			),
		],
	),
)

await graph_client.groups.by_group_id('group-id').threads.by_conversation_thread_id('conversationThread-id').reply.post(request_body)


```