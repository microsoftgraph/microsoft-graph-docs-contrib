---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Conversation(
	topic = "New head count",
	threads = [
		ConversationThread(
			posts = [
				Post(
					body = ItemBody(
						content_type = BodyType.Html,
						content = "The confirmation will come by the end of the week.",
					),
					new_participants = [
						Recipient(
							email_address = EmailAddress(
								name = "Adele Vance",
								address = "AdeleV@contoso.onmicrosoft.com",
							),
						),
					],
				),
			],
		),
	],
)

result = await graph_client.groups.by_group_id('group-id').conversations.post(request_body)


```