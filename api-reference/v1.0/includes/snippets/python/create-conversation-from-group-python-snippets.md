---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = Conversation(
	topic = "Take your wellness days and rest",
	threads = [
		ConversationThread(
			posts = [
				Post(
					body = ItemBody(
						content_type = BodyType.Html,
						content = "Contoso cares about you: Rest and Recharge",
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