---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.groups.item.threads.item.posts.item.reply.reply_post_request_body import ReplyPostRequestBody
from msgraph_beta.generated.models.post import Post
from msgraph_beta.generated.models.item_body import ItemBody
from msgraph_beta.generated.models.body_type import BodyType
from msgraph_beta.generated.models.extension import Extension
from msgraph_beta.generated.models.open_type_extension import OpenTypeExtension
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ReplyPostRequestBody(
	post = Post(
		body = ItemBody(
			content_type = BodyType.Html,
			content = "<html><body><div><div><div><div>When and where? </div></div></div></div></body></html>",
		),
		extensions = [
			OpenTypeExtension(
				odata_type = "microsoft.graph.openTypeExtension",
				extension_name = "Com.Contoso.HR",
				additional_data = {
						"company_name" : "Contoso",
						"expiration_date" : "2015-07-03T13:04:00.000Z",
						"top_picks" : [
							"Employees only",
							"Add spouse or guest",
							"Add family",
						],
				}
			),
		],
	),
)

await graph_client.groups.by_group_id('group-id').threads.by_conversation_thread_id('conversationThread-id').posts.by_post_id('post-id').reply.post(request_body)


```