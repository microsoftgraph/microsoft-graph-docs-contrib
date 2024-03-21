---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.conversation import Conversation
from msgraph.generated.models.conversation_thread import ConversationThread
from msgraph.generated.models.post import Post
from msgraph.generated.models.item_body import ItemBody
from msgraph.generated.models.extension import Extension
from msgraph.generated.models.open_type_extension import OpenTypeExtension

graph_client = GraphServiceClient(credentials, scopes)

request_body = Conversation(
	topic = "Does anyone have a second?",
	threads = [
		ConversationThread(
			posts = [
				Post(
					body = ItemBody(
						content_type = BodyType.Html,
						content = "This is urgent!",
					),
					extensions = [
						OpenTypeExtension(
							odata_type = "microsoft.graph.openTypeExtension",
							extension_name = "Com.Contoso.Benefits",
							additional_data = {
									"company_name" : "Contoso",
									"expiration_date" : "2016-08-03T11:00:00.000Z",
									"top_picks" : [
										"Employees only",
										"Add spouse or guest",
										"Add family",
									],
							}
						),
					],
				),
			],
		),
	],
)

result = await graph_client.groups.by_group_id('group-id').conversations.post(request_body)


```