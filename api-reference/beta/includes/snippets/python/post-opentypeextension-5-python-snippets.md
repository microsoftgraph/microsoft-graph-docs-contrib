---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.conversation import Conversation
from msgraph_beta.generated.models.conversation_thread import ConversationThread
from msgraph_beta.generated.models.post import Post
from msgraph_beta.generated.models.item_body import ItemBody
from msgraph_beta.generated.models.body_type import BodyType
from msgraph_beta.generated.models.extension import Extension
from msgraph_beta.generated.models.open_type_extension import OpenTypeExtension

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