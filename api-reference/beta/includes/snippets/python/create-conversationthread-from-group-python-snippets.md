---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ConversationThread(
	topic = "New Conversation Thread Topic",
	posts = [
		Post(
			body = ItemBody(
				content_type = BodyType.Html,
				content = "this is body content",
			),
			new_participants = [
				Recipient(
					email_address = EmailAddress(
						name = "Alex Darrow",
						address = "alexd@contoso.com",
					),
				),
			],
		),
	],
)

result = await graph_client.groups.by_group_id('group-id').threads.post(request_body)


```